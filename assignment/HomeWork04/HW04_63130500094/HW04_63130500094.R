# Packages
install.packages('readr')
install.packages('dplyr')
install.packages('DescTools')
install.packages('forcats')
install.packages('stringr')
install.packages('ggplot2')
install.packages('scales')

# Library
library(readr)
library(dplyr)
library(DescTools)
library(forcats)
library(stringr)
library(ggplot2)
library(scales)

# Import Dataset
superstore <- read.csv('https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv')

# Explore Dataset
View(superstore)
glimpse(superstore)

### Finding insight the data
#1 City ไหนมียอดรวมสั่งซื้อมากที่สุด
superstore %>% group_by(City) %>% select(City, Sales) %>% summarise(all_sales = sum(Sales)) %>% arrange(desc(all_sales)) %>% head(1)

#2 นับจำนวน Order ทั้งหมดที่มีการจัดส่งในแต่ละรูปแบบการจัดส่ง
shipping_type <- table(superstore$Ship.Mode)

#3 Region ไหนมีการเลือกจะส่งแบบ Same Day มากที่สุด
shipping_region <- superstore %>% filter(Ship.Mode == "Same Day") %>% group_by(Region)
shipping_region %>% tally(sort = TRUE) %>% head(1) 

#4 New York City มียอดการสั่งซื้อในแต่ละ Category เท่าไหร่
superstore %>% filter(City == 'New York City') %>% group_by(Category) %>% tally(sort = TRUE)

#5 จัดอันดับ Customer 3 อันดับที่มีการสั่งซื้อสินค้าประเภท Furniture มากที่สุด
customer_order <- superstore %>% filter(Category == 'Furniture') %>% group_by(Customer.Name)
customer_order %>% tally(sort = TRUE) %>% head(n=3)

#6 หาค่าเฉลี่ยของยอดคำสั่งซื้อทั้งหมด
superstore %>% summarise(mean(superstore$Sales)) %>% rename("Average Sales" = `mean(superstore$Sales)`)

### Visualization with GGplot2
#1 จำนวน Order ทั้งหมดใน
shipping_order <- data.frame(table(superstore$Ship.Mode))
shipping_order <- shipping_order %>% rename("shipping"=Var1, "order"=Freq)
shipping_order %>% ggplot(aes(x=shipping, y=order)) + geom_bar(fill="#FE000", stat="identity")