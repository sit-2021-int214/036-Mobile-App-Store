# Exercise 1
ex1 <- c(10.4,5.6,3.1,6.4,21.7)
mean(ex1)   # Average: 9.44
sum(ex1)    # Sum: 47.2
median(ex1) # Median: 6.4
sd(ex1)     # SD: 7.33846
var(ex1)    # Variance: 53.853

# Exercise 2
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")

years <- c(2008,2008,2010,2011,2011,2012,rep(2013:2016,each=2),
           rep(2017,4),rep(2018,2),rep(2019,3),rep(2021,4))

#เลือกใช้ Data Frame เนื่องจากเป็นการแสดงในรูปของ column กับ row ทำให้สามารถดึงข้อมูลมาใช้งานได้ง่าย
marvel_movies <- data.frame(movie_names = names, movie_years = years)
length(names)        # The numbers of movies: 27
marvel_movies[19,1]  # Finding the 19th movies name: Avengers: Infinity Wars
cal_most <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
cal_most(years) # Which year is most released movie: 2017, 2021 
# cal_most คำนวณออกมาได้ 2017