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