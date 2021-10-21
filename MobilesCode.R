# Import Package
install.packages("dplyr")
install.packages("assertive")
install.packages("stringr")
install.packages("readr")
install.packages("tidyr")

# Use Package by library() command
library("dplyr")
library("assertive")
library("stringr")
library("readr")
library("tidyr")

# Import Data
mobiles <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/036-Mobile-App-Store/master/Mobiles.csv")
View(mobiles)

#Cleaning Data
mobiles_app <- mobiles
mobiles_app <- mobiles_app %>% rename(size_mb = size_bytes)
mobiles_app <- mobiles_app %>% mutate(size_mb = size_mb / 1048576)
mobiles_app <- mobiles_app %>% mutate(currency = "THB")
mobiles_app <- mobiles_app %>% mutate(price = price * 33.40)

#1.ประเภทของแอปพลิเคชั่นที่มีจำนวนมากที่สุด
mobiles_app %>% count(prime_genre,sort = TRUE) %>% head(n = 1)

#2.แอปพลิเคชั่นที่มีราคาแพงที่สุดที่สุด
mobiles_app %>% arrange(desc(price)) %>% select(track_name, price) %>% head(n = 1)

#3.ขนาดที่ใหญ่ที่สุดของแอปพลิเคชั่นประเภทเกม
size_game <- mobiles_app %>% select(track_name, prime_genre, size_mb) %>% filter(prime_genre == "Games")
size_game %>% arrange(desc(size_mb)) %>% head(n = 1)

#4.จำนวนทั้งหมดของแอปพลิเคชั่นฟรีและแอปพลิเคชั่นที่เสียค่าใช้จ่าย
free_app <- mobiles_app %>% filter(price == 0)
paid_app <- mobiles_app %>% filter(price > 0)

#แอปพลิเคชั่นที่เกี่ยวข้องกับการศึกษาและรองรับภาษามากกว่า 35 ภาษา 
education_app <- mobiles_app %>% select(track_name, prime_genre, lang.num) %>% filter(prime_genre == "Education") 
education_app %>% select(track_name, prime_genre, lang.num) %>% filter(lang.num > 35)
