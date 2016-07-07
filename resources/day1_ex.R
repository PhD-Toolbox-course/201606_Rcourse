############################
# Genome lengths and number 
# of protein coding genes 
# for several model organisms
############################

# Fill genome.size vector
genome.size <- c(3102,2731,169,100,12)

# Fill coding.genes vector
coding.genes <- c(20774,23139,13937,20532,6692)

# Fill species.name vector
species.name <- c("H. sapiens","M. musculus","D. melanogaster","C. elegans","S.cerevisiae")

# Assign names to vectors
names(genome.size)<-species.name
names(coding.genes)<-species.name

# Convert to the same scale and create a new vector
coding.bases<-coding.genes*0.0015

# calculate the percentage of coding bases in each genome
coding.pc<-coding.bases/genome.size*100

## compare human to yeast
# coding bases
coding.bases[1]/coding.bases[5]
# genome size
genome.size[1]/genome.size[5]