#!/bin/bash

# 디렉토리에서 HC* 패턴의 모든 디렉토리 순회
for dir in VT*/; do
  # 디렉토리로 이동
  cd "$dir"
  
  # unmapped_1.fq 와 unmapped_2.fq가 존재하는지 확인
  if [[ -f "unmapped_1.fq" && -f "unmapped_2.fq" ]]; then
    
    # Taxonomy 리스트: Bacteria, Fungi, Archaea, Virus
    for taxon in Bacteria Fungi Archaea Virus; do
      # 해당 taxon의 taxid 설정 (필요 시 각 taxon의 taxid로 변경)
      if [[ "$taxon" == "Bacteria" ]]; then
        taxid=2
      elif [[ "$taxon" == "Fungi" ]]; then
        taxid=4751
      elif [[ "$taxon" == "Archaea" ]]; then
        taxid=2157
      elif [[ "$taxon" == "Virus" ]]; then
        taxid=10239
      fi
      
      # 1. extract_kraken_reads.py로 reads 추출
     /home/woohyun/workspace/SHOTGUN/betadiversity/scabies/KrakenTools-master/extract_kraken_reads.py --report unmapped.kreport -k unmapped.kraken -s1 unmapped_1.fq -s2 unmapped_2.fq -t $taxid -o extract_${taxon}_1.fq -o2 extract_${taxon}_2.fq --include-children
      
      # 2. 파일을 merge하여 unmapped_merged.fq 생성
      cat extract_${taxon}_1.fq extract_${taxon}_2.fq > extract_${taxon}_merged.fq
      
      # 3. Kraken2 실행
      kraken2 --db /home/woohyun/workspace/SHOTGUN/database_kraken2 --threads 30 --report extract_${taxon}.kreport --paired extract_${taxon}_1.fq extract_${taxon}_2.fq > extract_${taxon}.kraken
      
      # 4. Bracken 실행 (P, G, S 레벨에 대해 각각)
      bracken -d /home/woohyun/workspace/SHOTGUN/database_kraken2 -i extract_${taxon}.kreport -o extract_${taxon}_P.bracken -r 151 -l P -t 4
      bracken -d /home/woohyun/workspace/SHOTGUN/database_kraken2 -i extract_${taxon}.kreport -o extract_${taxon}_G.bracken -r 151 -l G -t 4
      bracken -d /home/woohyun/workspace/SHOTGUN/database_kraken2 -i extract_${taxon}.kreport -o extract_${taxon}_S.bracken -r 151 -l S -t 4
    done
    
  else
    echo "unmapped_1.fq 또는 unmapped_2.fq 파일이 $dir 디렉토리에 없습니다."
  fi
  
  # 상위 디렉토리로 돌아가기
  cd ..
done
