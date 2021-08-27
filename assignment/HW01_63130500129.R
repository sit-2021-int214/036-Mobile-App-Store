#----- Exercise 1 -----

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
    
mean(x) 
#average of x is 9.44

sum(x)
#sum of x is 47.2

median(x)
#median of x is 6.4

sd(x)
#sd of x is 7.33846

var(x)
#Variance of x is 53.853

#------------------------
  
#----- Exercise 2.1 -----
  
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")

years <- c(2008,2008,2010,2011,2011,2012,rep(2013:2016,each=2),
           rep(2017,4),rep(2018,2),rep(2019,3),rep(2021,4))

MOMarvel <- data.frame(names,years)
#Data frame can define the name of the column of the data and can extract the data very easy to use.

#----- Exercise 2.2 -----

#The numbers of movies is 27 movies
#The 19th movies name is Avengers: Infinity War
#Year that most released movies is 2017 & 2021