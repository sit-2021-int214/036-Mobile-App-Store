# Mobile App Store
Datasets from: https://www.kaggle.com/ramamet4/app-store-apple-data-set-10k-apps

## Steps
1. Define a question
2. Import Packages and dataset
3. Export & Explore dataset from Kaggle
4. Data Cleaning and Data Transformation
5. Exploratory Data Analysis

## Step 1: Define a question
1. `ประเภทของแอปพลิเคชั่นที่มีจำนวนมากที่สุด`
2. `แอปพลิเคชั่นที่มียอดดาว์โหลดและแพงที่สุด`
3. `แอปพลิเคชั่นประเภทเกมที่มีจำนวน byte ที่มากที่สุด`
4. `แอปพลิเคชั่นที่ไม่เสียค่าใช้จ่ายและได้รับการรีวิวสูงที่สุด`
5. `แอปพลิเคชั่นที่เกี่ยวข้องกับการศึกษาและรองรับภาษามากที่สุด`

## Step 2: Import Packages and dataset
```
# Import Package
install.packages("dplyr")
install.packages("assertive")
install.packages("stringr")
install.packages("readr")
install.packages("tidyr")
install.packages("tidyverse")

# Use Package by library() command
library("dplyr")
library("assertive")
library("stringr")
library("readr")
library("tidyr")
library("tidyverse")

# Import Dataset
mobiles <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/036-Mobile-App-Store/main/MobileData.csv")
View(mobiles)
```

## Step 3: Export & Explore dataset from Kaggle
Dataset ประกอบไปด้วยข้อมูลทั้งหมด 16 คอลัมน์
1. `id` : ID ของแอปพลิเคชั่น
2. `track_name` : ชื่อของแอปพลิเคชั่น
3. `size_bytes` : ขนาดของแอป (หน่วยเป็น byte)
4. `currency` : ประเภทสกุลเงิน
5. `price` : ราคา
6. `rating_count_to` : การนับคะแนนโหวตของผู้ใช้ (สำหรับทุกเวอร์ชัน)
7. `rating_count_ver` : การนับคะแนนโหวตของผู้ใช้ (สำหรับเวอร์ชันปัจจุบัน)
8. `user_rating` : ค่าการให้คะแนนของผู้ใช้โดยเฉลี่ย (สำหรับทุกรุ่น)
9. `user_rating_ver` : ค่าการให้คะแนนของผู้ใช้โดยเฉลี่ย (สำหรับเวอร์ชันปัจจุบัน)
10. `ver` : รหัสเวอร์ชั่นล่าสุด
11. `cont_rating` : เกณฑ์อายุการใช้งานแอปพลิเคชั่น
12. `prime_genre` : ประเภทของแอป
13. `sup_devices.num` : จำนวนอุปกรณ์ที่รองรับ
14. `ipadSc_urls.num` : จำนวนภาพหน้าจอที่แสดงสำหรับ display
15. `lang.num` : จำนวนภาษาที่รองรับ
16. `vpp_lic` : เปิดใช้งานการอนุญาตให้ใช้สิทธิ์ตามอุปกรณ์ Vpp

## Step 4: Data Cleaning and Data Transformation

## Step 5: Exploratory Data Analysis
