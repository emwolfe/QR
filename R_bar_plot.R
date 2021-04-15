TA.sum <- data.frame(TA=c("Nick","Jaime","Brett"),mean=c(10,12,16),sd=sd(c(10,12,16)))
TA.sum


ggplot(TA.sum) +
  geom_bar( aes(x=TA, y=mean), stat="identity", fill="grey", alpha=0.7) +
  geom_errorbar( aes(x=TA, ymin=mean-sd, ymax=mean+sd), width=0.4, colour="black", alpha=0.9, size=1)+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        panel.background=element_rect(fill="white"),panel.border=element_rect(fill=NA,color="black"))