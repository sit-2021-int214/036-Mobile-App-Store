# Mobile App Store.
Datasets from: https://www.kaggle.com/ramamet4/app-store-apple-data-set-10k-apps

## Steps
1. Define a question
2. Import Packages and dataset
3. Export & Explore dataset from Kaggle
4. Data Cleaning and Data Transformation
5. Exploratory Data Analysis

## Step 1: Define a question
1. ประเภทของแอปพลิเคชั่นที่มีจำนวนมากที่สุด
2. แอปพลิเคชั่นที่มีราคาแพงที่สุด
3. แอปพลิเคชั่นประเภทเกมที่มีจำนวน MB ที่มากที่สุด
4. แอปพลิเคชั่นที่ไม่เสียค่าใช้จ่ายและได้รับการรีวิวสูงที่สุด
5. แอปพลิเคชั่นที่เกี่ยวข้องกับการศึกษาและรองรับภาษามากที่สุด

## Step 2: Import Packages and dataset
```
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

# Import Dataset
mobiles <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/036-Mobile-App-Store/master/Mobiles.csv")
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
### 4.1) Copy Original Dataset
```
mobiles_app <- mobiles
```

### 4.2) Check Datatype of data
```
glimpse(mobiles_app)
```
จะได้ datatype ของทั้ง 17 column ดังนี้
```
$ X                <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18…
$ id               <int> 281656475, 281796108, 281940292, 282614216, 282935706, 283619…
$ track_name       <chr> "PAC-MAN Premium", "Evernote - stay organized", "WeatherBug -…
$ size_mb          <dbl> 96.119141, 151.232422, 95.867188, 122.558594, 88.476562, 9.99…
$ currency         <chr> "THB", "THB", "THB", "THB", "THB", "THB", "THB", "THB", "THB"…
$ price            <dbl> 133.266, 0.000, 0.000, 0.000, 0.000, 33.066, 0.000, 0.000, 33…
$ rating_count_tot <int> 21292, 161065, 188583, 262241, 985920, 8253, 119487, 1126879,…
$ rating_count_ver <int> 26, 26, 2822, 649, 5320, 5516, 879, 3594, 4, 40, 4017, 166, 2…
$ user_rating      <dbl> 4.0, 4.0, 3.5, 4.0, 4.5, 4.0, 4.0, 4.0, 4.5, 4.0, 4.5, 3.5, 3…
$ user_rating_ver  <dbl> 4.5, 3.5, 4.5, 4.5, 5.0, 4.0, 4.5, 4.5, 5.0, 4.0, 4.5, 2.5, 4…
$ ver              <chr> "6.3.5", "8.2.2", "5.0.0", "5.10.0", "7.5.1", "1.8", "6.12.0"…
$ cont_rating      <chr> "4+", "4+", "4+", "12+", "4+", "4+", "4+", "12+", "4+", "4+",…
$ prime_genre      <chr> "Games", "Productivity", "Weather", "Shopping", "Reference", …
$ sup_devices.num  <int> 38, 37, 37, 37, 37, 47, 37, 37, 37, 38, 38, 37, 37, 37, 38, 3…
$ ipadSc_urls.num  <int> 5, 5, 5, 5, 5, 5, 0, 4, 5, 0, 4, 0, 4, 0, 5, 1, 1, 5, 3, 0, 0…
$ lang.num         <int> 10, 23, 3, 9, 45, 1, 19, 1, 1, 10, 11, 6, 33, 2, 2, 26, 29, 1…
$ vpp_lic          <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
```


### 4.2) Convert App Size from Bytes To MB & Change Name
```
mobiles_app <- mobiles_app %>% rename(size_mb=size_bytes)
mobiles_app <- mobiles_app %>% mutate(size_mb = size_mb / 1048576)
```

### 4.3) Convert Currency USD to THB
```
mobiles_app <- mobiles_app %>% mutate(currency = "THB")
```

### 4.4) Convert Price from USD to THB
```
mobiles_app <- mobiles_app %>% mutate(price = price * 33.40)
```

## Step 5: Exploratory Data Analysis
### 1. ประเภทของแอปพลิเคชั่นที่มีจำนวนมากที่สุด
#### Code
```
mobiles_app %>% count(prime_genre,sort = TRUE) %>% head(n = 1)
```
#### Result
```
  prime_genre    n
1       Games 3862
```
#### Conclusion
```
Games เป็นประเภทที่มากที่สุดซึ่งมีทั้งหมด 3862 แอปพลิเคชั่น
```

### 2. แอปพลิเคชั่นที่มีราคาแพงที่สุดที่สุด
#### Code
```
mobiles_app %>% arrange(desc(price)) %>% select(track_name, price) %>% head(n = 1)
```
#### Result
```
           track_name    price
1 LAMP Words For Life 10019.67
```
#### Conclusion
```
แอปพลิเคชั่นที่แพงที่สุดคือ LAMP Words For Life ราคา 10,019.67 บาท
```

### 3. แอปพลิเคชั่นประเภทเกมที่มีจำนวน MB ที่มากที่สุด
##### Code
```
mobiles_app %>% filter(prime_genre == 'Game') %>% max(mobiles_app$size_mb)
```
#### Result
```
[1] 3839.464
```
#### Conclusion
```
แอปพลิเคชั่นประเภทเกมที่มีจำนวน MB ที่มากที่สุดอยู่ที่ 3839.464 
```

### 4. แอปพลิเคชั่นที่ไม่เสียค่าใช้จ่ายและได้รับการรีวิวสูงที่สุด
#### Code
```
```
#### Result
```
```
#### Conclusion
```
```

### 5. แอปพลิเคชั่นที่เกี่ยวข้องกับการศึกษาและรองรับภาษามากที่สุด
#### Code
```
```
#### Result
```
```
#### Conclusion
```
```
