#Tutorial Exercise 7
#Shane Davitt (No partner as I was the odd one out in our tutorial section)
#
#Question 1
#
#{Plotting by Sequence Lengths}
#
#Putting Lecture11.fasta into an R object
fastaData=read.table("Lecture11.fasta", sep="\t")
#
#Removing seq labels
conFasta = fastaData[seq(2, nrow(fastaData),2),]
#
#Converting data to a dataframe
data.frame(conFasta)
#
#Counting number of charecters in each sequence
countFasta=apply(conFasta,1,nchar)
#
#Plotting the result as a histogram
seqLenPlot=hist(countFasta, xlab="Sequence Length")
#
#{Plotting by GC Content (proportion of sequence which is GC)}
#
#Counting Gs in each sequence
gCount=str_count(conFasta[,1], pattern="G")
#
#Counting Cs in each sequence
cCount=str_count(conFasta[,1], pattern="C")
#
#Total GC count in each seq
GCCount=gCount+cCount
#
#Getting proportion of seq which is GC
GCfreq=GCCount/countFasta
#
#Plotting GC proportion as histogram
GCfreqPlot=hist(GCfreq, xlab="GC Proportion")
#
#I love it when manipulating matrices is as simple as a plus
#and a minus sign ! :)