install.packages("readr");
install.packages("dplyr");
install.packages("DescTools");
install.packages("ggplot2");
install.packages("scales");

# Import library
library(readr)      
library(dplyr)      
library(DescTools)      
library(ggplot2)    
library(scales)    

#Import dataset
super <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/036-Mobile-App-Store/master/assignment/HomeWork04/HW04_63130500148/Superstore%20Sales%20Dataset.csv")


#Explore dataset
View(super)
glimpse(super)

#Learning Tidyverse

#dplyr arrange ????????????????????????????????????????????????????????????????????????????????????????????????
super %>% arrange(Postal.Code)

#dplyr group by ???????????????????????????????????????????????????
super %>% group_by()

#dplyr group key ????????????????????? group by
super %>% group_by(State) %>% group_keys()

#Transform data with dplyr and finding insight the data
#1.สินค้าที่มีหมวดหมู่หลักเป็น Furniture และ หมวดหมู่ย่อยเป็น table 7 ตัวแรก
super %>% select(Row.ID,Category,Sub.Category) %>% filter(Category == "Furniture" ,Sub.Category == "Tables") %>% head(7)

#2.หาราคารวมของ sales ในแต่ละ state
super %>% group_by(State) %>% select(State,Sales) %>% summarise(sum_sales = sum(Sales)) 

#3.หาชื่อสินค้าที่เป็น หมวดหมู่ย่อยเป็น phone และราคามากกว่า 500 โดยเรียงจากน้อยไปมาก
super %>% select(Product.ID ,Sub.Category ,Sales) %>% filter(Sub.Category == "Phones" ,Sales > 500) %>% arrange(Sales)

#4.หาจำนวนสินค้าที่มี segment เป็น consumer
super %>% select(Product.ID ,Segment) %>% filter(Segment == "Consumer") %>% count()

#5.จงหา Product ID ที่มีราคาสูงที่สุด โดยมี Segment เป็น Home Office
super %>% filter(Segment == "Home Office" , Sales == max(Sales))  %>% select(Product.ID ,Segment ,Sales)

#6.หาราคาสินค้าที่มากที่สุดในเดือนนั้นๆ (รวมทุกปี)
super$Ship.Date <- as.Date(super$Ship.Date, format = "%d/%m/%y")
super %>% mutate(month = Month(Ship.Date)) %>% group_by(month) %>% summarise(Max_prices = max(Sales)) %>% arrange(month)

#Part 4: Visualization with GGplot2
#1.กราฟที่แสดงถึงประเภทการค้นส่งสินค้าทั้งหมดที่เคยสั่งชื้อสินค้า
graph_ship <- data.frame(table(super$Ship.Mode))
graph_ship <- graph_ship %>% rename("ship"=Var1,"count"=Freq)

graph_ship %>% ggplot(aes("x",y=count,fill=ship)) + 
               geom_bar(stat="identity", color="black") +
               coord_polar("y") + theme_void() +
               geom_text(aes(label = percent(count/sum(count))),
               position = position_stack(vjust = 0.49))

#2.กราฟที่เเสดง category ของสินค้าทั้งหมด
Cat_plot <- ggplot(super,aes(x=Category)) + geom_bar(fill="#FF4118")
Cat_plot + ggtitle("Number of Category") +
           xlab("Category") + ylab("Number of Category")



