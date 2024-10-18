Metagenomics shotgun sequencing pipline
===========


# 1.Installation
------------

Here is the installation process for metagenomics analysis.

## 1-1.sickle
Conda install:

    $ conda install bioconda::sickle
    $ conda install bioconda/label/cf201901::sickle

## 1-2.BWA-MEM2
Conda install:

    $ conda install bioconda::bwa-mem2

## 1-2.kraken2
Conda install:

    $ conda install bioconda::kraken2
    $ conda install bioconda/label/cf201901::kraken2
   install:  
   
    $ git clone https://github.com/DerrickWood/kraken2.git
    $ ./install_kraken2.sh $KRAKEN2_DIR
    $ cp $KRAKEN2_DIR/kraken2{,-build,-inspect} $HOME/bin
    
    
## 1-3.kraken2-biome
Conda install:

    $ conda install bioconda::kraken2
    $ conda install bioconda/label/cf201901::kraken2
    
From PyPI:

    $ pip install kraken-biom

From GitHub:


    $ pip install git+http://github.com/smdabdoub/kraken-biom.git

From source:

    $ python setup.py install

From docker:

    $ git clone https://github.com/smdabdoub/kraken-biom.git && cd kraken-biom
    $ docker build . -t kraken_biom
    $ docker run -it --rm -v ${pwd}:/data kraken_biom


## 1-4.Humann 3.0
    $ pip install humann
