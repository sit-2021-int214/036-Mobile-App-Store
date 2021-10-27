#import packages
library(readr)      
library(dplyr)      
library(DescTools)  
library(ggplot2)    


#import Dataset
superstore <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")

#explore Dataset
View(superstore)
glimpse(superstore)
#Part 2 Learning function from Tidyverse
#Dplyr
#selectfunc
x <- superstore %>% select(`Ship Mode`)
#groupbyfunc
superstore %>% group_by(Category)
#ggplot2
#theme_voidfunc
#geom_textfunc
Region <- data.frame(table(superstore$Region))
View(Region)
Region <- Region %>% rename("Region"=Var1,"count"=Freq)
Region %>% 
  ggplot(aes(x="",y=count,fill=Region)) + 
  geom_bar(stat="identity", width=2, color="black") +
  coord_polar("y", start=0)+theme_void()+
  geom_text(aes(label = count), position = position_stack(vjust = 0.45))



#Part 3 Transform data with dplyr and finding insight the data 
#1หาว่า segment ไหนมีจำนวนออเดอร์มากที่สุด
superstore %>%count(Segment,sort = TRUE)%>% head(n=1)
#2หาว่า Ship Mode Standard Class มีจำนวนออเดอร์ทั้งหมดกี่ออเดอร์
 v <- superstore %>% select(`Ship Mode`)%>% filter(`Ship Mode`=="Standard Class")
 v %>% count(`Ship Mode`)
#3หาว่าเเต่ละ Categorมีจำนวนออเดอร์เท่าไร
 superstore %>% group_by(Category) %>% count()%>% arrange(desc(n))
#4หาราคาที่สูงที่สุดของเเต่ละ region
 superstore %>% group_by(Region) %>% summarise(max(Sales)) 
#5หาราคาเฉลี่ยของ superstore
 superstore %>% summarise(Mean(Sales)) %>% rename("average" = `Mean(Sales)`)
#6หา3อันดับ PostalCodeเเละจำนวนออเดอร์ ที่มีจำนวนออเดอร์มากที่สุด
 superstore %>% group_by(`Postal Code`) %>% count(`Postal Code`,sort = TRUE) %>% arrange(desc(n)) %>% head(n=3)


#Part 4 Visualization with GGplot2

#1 จำนวนออเดอร์จากเเต่ละภูมิภาค 
Region <- data.frame(table(superstore$Region))
View(Region)
Region <- Region %>% rename("Region"=Var1,"count"=Freq)
Region %>% 
  ggplot(aes(x="",y=count,fill=Region)) + 
  geom_bar(stat="identity", width=2, color="black") +
  coord_polar("y", start=0)+theme_void()+
  geom_text(aes(label = count), position = position_stack(vjust = 0.45))
#2 จำนวนsegmentของเเต่ละorder
numb_segment <-  table(superstore$`Segment`)
barplot(numb_segment)
barplot(numb_segment,main = "Number of segment",xlab = "Segment",ylab = "Number of segment")


 
