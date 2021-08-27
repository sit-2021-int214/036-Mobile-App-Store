EX1 <- c(10.4, 5.6, 3.1, 6.4, 21.7)
mean(EX1)# 9.44
sum(EX1) #47.2
median(EX1)#6.4
sd(EX1)#7.33846
var(EX1) #53.853

#------------------------------------#
#EX2
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")
years <- c(2008,2008,2010,2011,2011,2012,2013,2013,2014,2014,2015,2015,2016,2016,
           2017,2017,2017,2017,2018,2018,2019,2019,2019,2021,2021,2021,2021)


EX2 <- data.frame(names,years) #Because dataframe is easy to look about year of movie release and Name of movie is following by year of moive release.

#2.2

length(names) #27
names[19] #Avengers: Infinity War
#2.2.3 most movie release = 2017,2021