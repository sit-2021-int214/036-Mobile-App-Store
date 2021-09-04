# Assignment 3 (Group): Explore Data with dpylr

From week 4 that you have using `dpylr` packages and learn from self learning activity. I want you to review and improvement your group assigment #2. Rewrite your function by using `dpylr` at least 5 topics (from 2 datasets). Your group can add new topics to reach 5 topics.

จากการเรียนรู้ในสัปดาห์ที่ 4 ที่ได้เรียนรู้ใช้ `dpylr` packages และการเรียนรู้ด้วยตนเอง อยากให้ใช้ไปรีวิวและปรับปรุงงานจาก Assignment ครั้งที่ 2 โดยให้เขียน function ใหม่โดยใช้ `dpylr` packages จาก 2 ชุดข้อมูลรวมกันอย่างน้อย 5 หัวข้อ ซึ่งหากของเดิมอันไหนที่ปรับไม่ได้สามารถเพิ่มหัวข้อใหม่เข้าไปได้

### Answer

1.) From cats, how many male & female cats.
- Description: ใช้ summary ในการหาจำนวนแมวเพศผู้และเพศเมีย

```{R}
summary(factor(cats$Sex))

# Using dplyr
cats %>% count(Sex) -> dplyr

จากกลุ่มตัวอย่างแมวพบว่ามีแมวเพศผู้ทั้งหมด 97 ตัวและแมวเพศเมียทั้งหมด 47 ตัว
```

2.) Find median of Bwt for all of cats.
- Description: ใช้ mean ในการน้ำหนักตัวเฉลี่ยของแมวทั้งหมด

```{R}
mean(cats$Bwt)

# Using dplyr
cats$Bwt %>% mean()

จากกลุ่มตัวอย่างแมวพบว่ามีน้ำหนักตัวเฉลี่ยอยู่ที่ 2.723611 กิโลกรัม
```

3.) #Find Median of Hwt for first 6 cats.
- Description: ใช้ mean ในการหาน้ำหนักของหัวใจเฉลี่ยและใช้ head สำหรับการหาสำหรับแมว 6 ตัวแรก

```{R}
x <- head(cats$Hwt)
mean(x)

# Using dplyr
head(cats$Hwt, 6) %>% mean()

จากกลุ่มตัวอย่างแมว 6 ตัวแรกพบว่าน้ำหนักของหัวใจเฉลี่ยอยู่ที่ 7.666667 กรัม
```

4.) Find median of height for all of student.
- Description: ใช้ mean ในการหาส่วนสูงของนักเรียนทั้งหมดโดยไม่นำ NA มาคำนวณผ่านคำสั่ง rm

```{R}
mean(survey$Height,na.rm = TRUE)

# Using dplyr
survey$Height %>% mean(na.rm = TRUE)

จากกลุ่มตัวอย่าง survey พบว่าส่วนสูงเฉลี่ยของนักเรียนทั้งหมดคือ 172.3809 เซนติเมตร
```

5.) Find the student's exercise frequency.
- Description: ใช้ summary หาความถี่ในการออกกำลังกายของนักเรียน

```{R}
summary(factor(survey$Exer))

# Using dplyr
survey %>% count(Exer)

จากกลุ่มตัวอย่าง survey ความถี่ในการออกกำลังกายของนักเรียน Freq = 115 คน, None = 24 คน, Some = 98 คน
```

6.) Find the most female student age that use right hand for writing.
- Description: ใช้ max ในการหาอายุที่มากที่สุดของนักเรียนหญิงและใช้มือขวาเขียนหนังสือ

```{R}
max(survey$Age[survey$W.Hnd == 'Right'],na.rm = TRUE)

# Using dplyr
survey %>% filter(W.Hnd == 'Right') %>% summarise(max(Age))

จากกลุ่มตัวอย่าง survey พบว่าอายุที่มากที่สุดของนักเรียนหญิงและใช้มือขวาเขียนหนังสือคือ 73 ปี
```

### Team: StatZa007

1. นายภูมินทร์ ชุมภู StudentID: 63130500094
2. นายศิริพงษ์ ผิวขาว StudentID: 63130500109
3. นายอนุวัฒน์ พัฒนจันทร์ StudentID: 63130500129
4. นายกฤตยชญ์ วงศ์วุฒินันท์ StudentID: 63130500148
