# Hypothesis testing

## Question
ตั้งสมมติฐานว่า เพลงที่จะขึ้น Top 1-200 charts ของ Spotify จะต้องมีจำนวนการสตรีมเพลงมากกว่า 7000000 ครั้ง ซึ่งใน 1-200 ลำดับมีค่าเฉลี่ยการสตรีมอยู่ที่ 6340219 ครั้ง และมีส่วนเบี่ยงเบนมาตรฐาน เท่ากับ 369479 ครั้ง ( ถ้ากำหนดค่า alpha เท่ากับ 0.05 )



Step 0: Import Libray & CSV

```
library("dplyr")
library("readr")

data <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/036-Mobile-App-Store/main/)
```

```
n <- 1556
meanStreams <- mean(spotify_top$Streams) #mean = 6340219
sdStreams <- sd(spotify_top$Streams)   #sd = 3369479
```

Step 1: State the hypothesis

```
Ho:mue>7000000
Ha:mue<=7000000
```

Step 2: Level of significance

```
alpha = 0.05 
```

Step 3: Test statistic

```
zStreams <- (meanStreams - 7000000)/(sdStreams/sqrt(1556))
```

Step 4: Finding P-value approach or Critical Value approach

```
# P-value
pvalueStreams <- pnorm(zStreams)
# Critical Value 
zalphaStreams <- qnorm(0.05)
```

Step 5: Compare

```
if(pvalueStreams<=0.05){
  print("Reject H0")
}else{
  print("Accept H0")
}
# Using critical value
if(zStreams<=zalphaStreams){
  print("Reject H0")
}else{
  print("Accept H0")
}
```

Step 6: Conclusion
```
เพลงที่จะขึ้น top 1-200 ของ charts ใน spotify จะต้องมีจำนวนการสตรีมเพลงน้อยกว่าหรือเท่ากับ 7000000
```
