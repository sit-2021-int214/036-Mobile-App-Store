# Analytical Inferential Statistics
## Hypothesis testing

### Step to do :


Step 0 Assign variables:
   - u0 or p0
   - xbar or pbar
   - n
   - sd (or sigma)
   - alpha (default is 0.05)

Step 1 State the hypothesis

Step 2 Select Level of significance (alpha)

Step 3 Select Test statistic (This formula for one population)
   - z/t <- (xbar - u0) / (sd/sqrt(n))
   - z <- (pbar-p0) / sqrt((p0\*(1-p0))/n)

Step 4 Finding P-value approach or Critical Value approach
   - P-value for Z: `pvalue <- pnorm(z)`
   - Critical Value for Z: `zalpha <- qnorm(alpha)`
   - P-value for T: `pvalue <- pt(q, df,lower.tail = TRUE)`
   - talpha for T: `talpha <- qt(p, df, lower.tail = TRUE)`

Step 5 Compare P-value with alpha or z/t with zalpha/talpha

Step 6 Conclusion

## Problem
## Defind question
ตั้งสมมติฐานว่า เพลงที่จะขึ้น Top 1-200 charts ของ Spotify จะต้องมีจำนวนการสตรีมเพลงมากกว่า 7000000 ครั้ง ซึ่งใน 1-200 ลำดับมีค่าเฉลี่ยการสตรีมอยู่ที่ 6340219 ครั้ง และมีส่วนเบี่ยงเบนมาตรฐาน เท่ากับ 369479 ครั้ง ( ถ้ากำหนดค่า alpha เท่ากับ 0.05 )

Step 0: Assign variables

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
