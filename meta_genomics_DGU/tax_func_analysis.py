import subprocess
import argparse

def run_commands(input_R1, input_R2, quality_option=False):
    try:
        # Step 1: sickle for trimming
        sickle_cmd = [
            'sickle', 'pe', '-f', input_R1, '-r', input_R2, '-t', 'sanger',
            '-o', 'trimmed_1.fq', '-p', 'trimmed_2.fq', '-s', 'trimmed_single.fq', '-q', '20', '-l', '100'
        ]
        subprocess.run(sickle_cmd, check=True)
        print("Step 1: Sickle trimming completed. Files generated: 'trimmed_1.fq', 'trimmed_2.fq', 'trimmed_single.fq'")

        # Step 2: BWA-MEM2 for mapping 
        bwa_cmd = [
            'bwa-mem2', 'mem', '-t', '16', '/home/woohyun/workspace/SHOTGUN/human_ref/ref4/GRCh38_latest_genomic.fna.gz',
            'trimmed_1.fq', 'trimmed_2.fq'
        ]
        with open('mapped.sam', 'w') as outfile:
            subprocess.run(bwa_cmd, check=True, stdout=outfile)
        print("Step 2: BWA-MEM2 mapping completed. File generated: 'mapped.sam'")

        # Step 3: SAMtools to extract unmapped reads 
        subprocess.run(['samtools', 'view', '-b', '-f', '4', 'mapped.sam', '-o', 'unmapped.bam'], check=True)
        print("Step 3: SAMtools view completed. File generated: 'unmapped.bam'")

        # Step 4: SAMtools sorting for BEDtools 
        subprocess.run(['samtools', 'sort', '-n', 'unmapped.bam', '-o', 'unmapped_sorted.bam'], check=True)
        print("Step 4: SAMtools sorting completed. File generated: 'unmapped_sorted.bam'")

        # Step 5: BEDtools to convert BAM to FASTQ (Unmapped reads를 FASTQ로 변환)
        bedtools_cmd = [
            'bedtools', 'bamtofastq', '-i', 'unmapped_sorted.bam',
            '-fq', 'unmapped_1.fq', '-fq2', 'unmapped_2.fq'
        ]
        subprocess.run(bedtools_cmd, check=True)
        print("Step 5: BEDtools bamtofastq completed. Files generated: 'unmapped_1.fq', 'unmapped_2.fq'")

        # Step 6: Concatenate unmapped FASTQ files 
        with open('unmapped_merged.fq', 'w') as merged:
            subprocess.run(['cat', 'unmapped_1.fq', 'unmapped_2.fq'], check=True, stdout=merged)
        print("Step 6: FASTQ files concatenated. File generated: 'unmapped_merged.fq'")

        # Step 7: Kraken2 for taxonomic classification 
        kraken2_cmd = [
            'kraken2', '--db', '/home/woohyun/workspace/SHOTGUN/database_kraken2', '--threads', '16',
            '--report', 'unmapped.kreport', '--paired', 'unmapped_1.fq', 'unmapped_2.fq'
        ]
        with open('unmapped.kraken', 'w') as kraken_output:
            subprocess.run(kraken2_cmd, check=True, stdout=kraken_output)
        print("Step 7: Kraken2 classification completed. Files generated: 'unmapped.kreport', 'unmapped.kraken'")

        # Step 8: Bracken for abundance estimation at different levels 
        bracken_levels = ['P', 'G', 'S']
        for level in bracken_levels:
            bracken_cmd = [
                'bracken', '-d', '/home/woohyun/workspace/SHOTGUN/database_kraken2',
                '-i', 'unmapped.kreport', '-o', f'unmapped_{level}.bracken',
                '-r', '151', '-l', level, '-t', '4'
            ]
            subprocess.run(bracken_cmd, check=True)
        print("Step 8: Bracken analysis completed. Files generated: 'unmapped_P.bracken', 'unmapped_G.bracken', 'unmapped_S.bracken'")

        # Step 9: HUMANN for functional profiling 
        humann_cmd = ['humann', '--input', 'unmapped_merged.fq', '--threads', '16']
        subprocess.run(humann_cmd, check=True)
        print("Step 9: HUMANN analysis completed.")

    except subprocess.CalledProcessError as e:
        print(f"Error during command execution: {e}")

if __name__ == "__main__":
    # Argument parsing
    parser = argparse.ArgumentParser(description="Taxonomic and functional analysis pipeline")
    parser.add_argument("-r", "--reads", nargs=2, required=True, help="Input paired FASTQ files (R1 and R2)")
    args = parser.parse_args()

    # Run the commands with the provided input files
    run_commands(args.reads[0], args.reads[1])
