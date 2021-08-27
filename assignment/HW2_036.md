# Assignment 2 (Group)

Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.

### Answer

1.) From cats, how many male & female cats.
- Description: ใช้ summary ในการหาจำนวนแมวเพศผู้และเพศเมีย

```{R}
summary(factor(cats$Sex))
```

2.) Find median of Bwt for all of cats.
- Description: ใช้ mean ในการน้ำหนักตัวเฉลี่ยของแมวทั้งหมด

```{R}
mean(cats$Bwt)
```

3.) #Find Median of Hwt for first 6 cats.
- Description: ใช้ mean ในการหาน้ำหนักของหัวใจเฉลี่ยและใช้ head สำหรับการหาสำหรับแมว 6 ตัวแรก

```{R}
x <- head(cats$Hwt)
mean(x)
```

4.) Find median of height for all of student.
- Description: ใช้ mean ในการหาส่วนสูงของนักเรียนทั้งหมดโดยไม่นำ NA มาคำนวณผ่านคำสั่ง rm

```{R}
mean(survey$Height,na.rm = TRUE)
```

5.) Find the student's exercise frequency.
- Description: ใช้ summary หาความถี่ในการออกกำลังกายของนักเรียน

```{R}
summary(factor(survey$Exer))
```

6.) Find the most female student age that use right hand for writing.
- Description: ใช้ max ในการหาอายุที่มากที่สุดของนักเรียนหญิงและใช้มือขวาเขียนหนังสือ

```{R}
max(survey$Age[survey$W.Hnd == 'Right'],na.rm = TRUE)
```

### Team: StatZa007

1. นายภูมินทร์ ชุมภู StudentID: 63130500094
2. นายศิริพงษ์ ผิวขาว StudentID: 63130500109
3. นายอนุวัฒน์ พัฒนจันทร์ StudentID: 63130500129
4. นายกฤตยชญ์ วงศ์วุฒินันท์ StudentID: 63130500148
