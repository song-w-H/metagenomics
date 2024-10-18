
########################################

library("ggplot2")
library("scales")
library(dplyr)
library(tidyr)
library(ggbreak)
library(patchwork)
library(gridExtra)

setwd("/home/woohyun/workspace/SHOTGUN/sample/yoonsi/New Folder")
##### VH6_stool #####
data_bracken <- read.csv("VH-6_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df2 <- rbind(top_rows, other_rows)
df2$sample <- 'VT1'



##### VH7_stool  #####
data_bracken <- read.csv("VH-7_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]

df3 <- rbind(top_rows, other_rows)
df3$sample <- 'VT2'

##### VH8  #####
data_bracken <- read.csv("VH-8_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df4 <- rbind(top_rows, other_rows)
df4$sample <- 'VT3'




##### VH9_3  #####
data_bracken <- read.csv("VH-9_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df5 <- rbind(top_rows, other_rows)
df5$sample <- 'VT4'



##### VH11_3  #####
data_bracken <- read.csv("VH-11_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df6 <- rbind(top_rows, other_rows)
df6$sample <- 'VT5'


##### VH12_1  #####
data_bracken <- read.csv("VH-12_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df7 <- rbind(top_rows, other_rows)
df7$sample <- 'VT6'

##### VH13_2  #####
data_bracken <- read.csv("VH-13_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df8 <- rbind(top_rows, other_rows)

df8$sample <- 'VT7'

##### VH14_2  #####
data_bracken <- read.csv("VH-14_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df9 <- rbind(top_rows, other_rows)

df9$sample <- 'VT8'

##### VH15_1  #####
data_bracken <- read.csv("VH-15_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df10 <- rbind(top_rows, other_rows)

df10$sample <- 'VT9'



##### VC16  #####
data_bracken <- read.csv("VH-16_genus.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df11 <- rbind(top_rows, other_rows)

df11$sample <- 'VT10'

































###############################

setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC1/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC1 <- rbind(top_rows, other_rows)
df_HC1$sample <- 'HC1'



setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC3/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC3 <- rbind(top_rows, other_rows)
df_HC3$sample <- 'HC3'


setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC4/")
data_bracken <- read.csv("", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC4 <- rbind(top_rows, other_rows)
df_HC4$sample <- 'HC4'




setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC5/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC5 <- rbind(top_rows, other_rows)
df_HC5$sample <- 'HC5'


setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC6/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC6 <- rbind(top_rows, other_rows)
df_HC6$sample <- 'HC6'




setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC7/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC7 <- rbind(top_rows, other_rows)
df_HC7$sample <- 'HC7'


setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC8/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC8 <- rbind(top_rows, other_rows)
df_HC8$sample <- 'HC8'




setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC9/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC9 <- rbind(top_rows, other_rows)
df_HC9$sample <- 'HC9'



setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC10/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC10 <- rbind(top_rows, other_rows)
df_HC10$sample <- 'HC10'



setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC11/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC11 <- rbind(top_rows, other_rows)
df_HC11$sample <- 'HC11'



setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC12/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE,sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
#other_rows <- other_rows  %>% summarize(across(-name, sum))

df_HC12 <- rbind(top_rows, other_rows)
df_HC12$sample <- 'HC12'



# HC13 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC13/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC13 <- rbind(top_rows, other_rows)
df_HC13$sample <- 'HC13'
final_df <- rbind( df_HC13)

# HC14 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC14/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC14 <- rbind(top_rows, other_rows)
df_HC14$sample <- 'HC14'
final_df <- rbind(final_df, df_HC14)

# HC15 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC15/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC15 <- rbind(top_rows, other_rows)
df_HC15$sample <- 'HC15'
final_df <- rbind(final_df, df_HC15)

# HC16 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC16/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC16 <- rbind(top_rows, other_rows)
df_HC16$sample <- 'HC16'
final_df <- rbind(final_df, df_HC16)

# HC17 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC17/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC17 <- rbind(top_rows, other_rows)
df_HC17$sample <- 'HC17'
final_df <- rbind(final_df, df_HC17)

# HC18 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC18/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC18 <- rbind(top_rows, other_rows)
df_HC18$sample <- 'HC18'
final_df <- rbind(final_df, df_HC18)

# HC19 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC19/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC19 <- rbind(top_rows, other_rows)
df_HC19$sample <- 'HC19'
final_df <- rbind(final_df, df_HC19)

# HC20 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC20/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC20 <- rbind(top_rows, other_rows)
df_HC20$sample <- 'HC20'
final_df <- rbind(final_df, df_HC20)

# HC21 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC21/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC21 <- rbind(top_rows, other_rows)
df_HC21$sample <- 'HC21'
final_df <- rbind(final_df, df_HC21)

# HC22 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC22/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC22 <- rbind(top_rows, other_rows)
df_HC22$sample <- 'HC22'
final_df <- rbind(final_df, df_HC22)

# HC23 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC23/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC23 <- rbind(top_rows, other_rows)
df_HC23$sample <- 'HC23'
final_df <- rbind(final_df, df_HC23)

# HC24 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC24/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC24 <- rbind(top_rows, other_rows)
df_HC24$sample <- 'HC24'
final_df <- rbind(final_df, df_HC24)

# HC25 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC25/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC25 <- rbind(top_rows, other_rows)
df_HC25$sample <- 'HC25'
final_df <- rbind(final_df, df_HC25)

# HC26 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC26/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC26 <- rbind(top_rows, other_rows)
df_HC26$sample <- 'HC26'
final_df <- rbind(final_df, df_HC26)

# HC27 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC27/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC27 <- rbind(top_rows, other_rows)
df_HC27$sample <- 'HC27'
final_df <- rbind(final_df, df_HC27)

# HC28 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC28/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC28 <- rbind(top_rows, other_rows)
df_HC28$sample <- 'HC28'
final_df <- rbind(final_df, df_HC28)

# HC29 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC29/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC29 <- rbind(top_rows, other_rows)
df_HC29$sample <- 'HC29'
final_df <- rbind(final_df, df_HC29)

# HC30 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC30/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC30 <- rbind(top_rows, other_rows)
df_HC30$sample <- 'HC30'
final_df <- rbind(final_df, df_HC30)

# HC31 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC31/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC31 <- rbind(top_rows, other_rows)
df_HC31$sample <- 'HC31'
final_df <- rbind(final_df, df_HC31)

# HC32 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC32/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC32 <- rbind(top_rows, other_rows)
df_HC32$sample <- 'HC32'
final_df <- rbind(final_df, df_HC32)

# HC33 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC33/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC33 <- rbind(top_rows, other_rows)
df_HC33$sample <- 'HC33'
final_df <- rbind(final_df, df_HC33)

# HC34 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC34/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC34 <- rbind(top_rows, other_rows)
df_HC34$sample <- 'HC34'
final_df <- rbind(final_df, df_HC34)

# HC35 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC35/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC35 <- rbind(top_rows, other_rows)
df_HC35$sample <- 'HC35'
final_df <- rbind(final_df, df_HC35)

# HC36 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC36/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC36 <- rbind(top_rows, other_rows)
df_HC36$sample <- 'HC36'
final_df <- rbind(final_df, df_HC36)

# HC37 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC37/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC37 <- rbind(top_rows, other_rows)
df_HC37$sample <- 'HC37'
final_df <- rbind(final_df, df_HC37)

# HC38 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC38/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC38 <- rbind(top_rows, other_rows)
df_HC38$sample <- 'HC38'
final_df <- rbind(final_df, df_HC38)

# HC39 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC39/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC39 <- rbind(top_rows, other_rows)
df_HC39$sample <- 'HC39'
final_df <- rbind(final_df, df_HC39)

# HC40 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC40/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC40 <- rbind(top_rows, other_rows)
df_HC40$sample <- 'HC40'
final_df <- rbind(final_df, df_HC40)

# HC41 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC41/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC41 <- rbind(top_rows, other_rows)
df_HC41$sample <- 'HC41'
final_df <- rbind(final_df, df_HC41)

# HC42 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC42/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC42 <- rbind(top_rows, other_rows)
df_HC42$sample <- 'HC42'
final_df <- rbind(final_df, df_HC42)

# HC43 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC43/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC43 <- rbind(top_rows, other_rows)
df_HC43$sample <- 'HC43'
final_df <- rbind(final_df, df_HC43)

# HC44 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC44/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC44 <- rbind(top_rows, other_rows)
df_HC44$sample <- 'HC44'
final_df <- rbind(final_df, df_HC44)

# HC45 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC45/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC45 <- rbind(top_rows, other_rows)
df_HC45$sample <- 'HC45'
final_df <- rbind(final_df, df_HC45)

# HC46 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC46/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC46 <- rbind(top_rows, other_rows)
df_HC46$sample <- 'HC46'
final_df <- rbind(final_df, df_HC46)

# HC47 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC47/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC47 <- rbind(top_rows, other_rows)
df_HC47$sample <- 'HC47'
final_df <- rbind(final_df, df_HC47)

# HC48 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC48/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC48 <- rbind(top_rows, other_rows)
df_HC48$sample <- 'HC48'
final_df <- rbind(final_df, df_HC48)

# HC49 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC49/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC49 <- rbind(top_rows, other_rows)
df_HC49$sample <- 'HC49'
final_df <- rbind(final_df, df_HC49)

# HC50 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC50/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC50 <- rbind(top_rows, other_rows)
df_HC50$sample <- 'HC50'
final_df <- rbind(final_df, df_HC50)

# HC51 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC51/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC51 <- rbind(top_rows, other_rows)
df_HC51$sample <- 'HC51'
final_df <- rbind(final_df, df_HC51)

# HC52 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC52/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC52 <- rbind(top_rows, other_rows)
df_HC52$sample <- 'HC52'
final_df <- rbind(final_df, df_HC52)

# HC53 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC53/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC53 <- rbind(top_rows, other_rows)
df_HC53$sample <- 'HC53'
final_df <- rbind(final_df, df_HC53)

# HC54 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC54/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC54 <- rbind(top_rows, other_rows)
df_HC54$sample <- 'HC54'
final_df <- rbind(final_df, df_HC54)

# HC55 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC55/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC55 <- rbind(top_rows, other_rows)
df_HC55$sample <- 'HC55'
final_df <- rbind(final_df, df_HC55)

# HC56 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC56/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC56 <- rbind(top_rows, other_rows)
df_HC56$sample <- 'HC56'
final_df <- rbind(final_df, df_HC56)

# HC57 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC57/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC57 <- rbind(top_rows, other_rows)
df_HC57$sample <- 'HC57'
final_df <- rbind(final_df, df_HC57)

# HC58 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC58/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC58 <- rbind(top_rows, other_rows)
df_HC58$sample <- 'HC58'
final_df <- rbind(final_df, df_HC58)

# HC59 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC59/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC59 <- rbind(top_rows, other_rows)
df_HC59$sample <- 'HC59'
final_df <- rbind(final_df, df_HC59)

# HC60 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC60/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC60 <- rbind(top_rows, other_rows)
df_HC60$sample <- 'HC60'
final_df <- rbind(final_df, df_HC60)

# HC61 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC61/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC61 <- rbind(top_rows, other_rows)
df_HC61$sample <- 'HC61'
final_df <- rbind(final_df, df_HC61)

# HC62 작업
setwd("/home/woohyun/workspace/SHOTGUN/sample/data/healthy/VH/HYU/HC62/")
data_bracken <- read.csv("bacteria_G.bracken", header = TRUE, sep ='\t')
sorted_data_bracken <- data_bracken[order(-data_bracken$fraction_total_reads),]
top_rows <- sorted_data_bracken[1:8, ]
other_rows <- sorted_data_bracken[9:nrow(sorted_data_bracken),]
other_rows <- other_rows[,-3]
other_rows <- other_rows %>% 
  summarize(across(-name, function(x) sum(x)))
other_rows$name <- 'Others'
other_rows$taxonomy_lvl <-'P'
other_rows <- other_rows[,c("name","taxonomy_id","taxonomy_lvl","kraken_assigned_reads","added_reads","new_est_reads",
                            "fraction_total_reads")]
df_HC62 <- rbind(top_rows, other_rows)
df_HC62$sample <- 'HC62'
final_df <- rbind(final_df, df_HC62)






# 데이터 프레임 합치기 및 재구조화
combined_df_phlum <- rbind(df2, df3, df4, df5, df6, df7, df8, df9, df10, df11,
                            df_HC11, df_HC18, df_HC21, df_HC34, df_HC41, df_HC49, df_HC52, df_HC56,
                            df_HC12, df_HC19, df_HC20, df_HC28, df_HC30, df_HC33, df_HC40, df_HC48, df_HC58,
                            df_HC7, df_HC9, df_HC13, df_HC17, df_HC23, df_HC24, df_HC35, df_HC46, df_HC51, df_HC53, df_HC54,
                            df_HC1, df_HC4, df_HC8, df_HC15, df_HC38, df_HC39, df_HC42, df_HC55, df_HC57)





## 하나의 열 추가 
combined_df_phlum$State <- ifelse(grepl("HC", combined_df_phlum$sample), "HC(n=37)", 
                        ifelse(grepl("VT", combined_df_phlum$sample), "VT(n=10)", NA))






##########phylum top7




#x축 순서 바꾸기(이름은 적어서 바꾸세용)
#pl<-pl+scale_x_discrete(limits=c("virginica", "versicolor", "setosa"))
combined_df_phlum <- combined_df_phlum[combined_df_phlum$name != "Chordata", ]

unique(combined_df_phlum$name)

name <- c("Others",
          "Basidiomycota",
          "Ascomycota","Uroviricota","Spirochaetes"
          ,"Verrucomicrobia"
          ,"Chordata","Cyanobacteria","Fusobacteria","Tenericutes","Synergistetes","Chloroflexi","Planctomycetes","Euryarchaeota"
          ,"Proteobacteria","Bacteroidetes","Actinobacteria","Firmicutes")

name <-rev(name)
combined_df_phlum$name <- factor(combined_df_phlum$name, levels = c(name))



## 지정으로 순서 결정
combined_df_phlum$sample <- factor(combined_df_phlum$sample, levels = c("VT3","VT1",  "VT7", "VT5", "VT9","VT6",     "VT4","VT2",  "VT10",  "VT8", 
                                                                        "HC11", "HC18", "HC21", "HC34", "HC41", "HC49", "HC52", "HC56",
                                                                        "HC12", "HC19", "HC20", "HC28", "HC30", "HC33", "HC40", "HC48", "HC58",
                                                                        "HC7", "HC9", "HC13", "HC17", "HC23", "HC24", "HC35", "HC46", "HC51", "HC53", "HC54",
                                                                        "HC1", "HC4", "HC8", "HC15", "HC38", "HC39", "HC42", "HC55", "HC57"))  # 원하는 순서대로 sample1, sample2, sample3, ...을 나열






ggplot(data=combined_df_phlum ,aes(x= sample , y= fraction_total_reads, fill =name))+ 
  geom_bar(stat="identity" ,position = "fill", width=0.8) + scale_fill_manual(values = cols)+
  theme(legend.text= element_text(size=9), axis.text = element_text(face = "bold",size = 11))+
  theme(legend.key.size = unit(0.2, "cm"))+
  theme(axis.text.x = element_text(angle = 45, hjust = 1,size =6.0))+
  guides(fill = guide_legend(nrow = 20, reverse = FALSE))+
  labs(title = "Phylum_TOP8", x = "sample", y = "Ratio",size=2)+ 
  facet_grid(~State, space="free", scales="free")

pl_P <- ggplot(data=combined_df_phlum, aes(x=sample, y=fraction_total_reads, fill=name)) + 
  geom_bar(stat="identity", position="fill", width=0.8)+
  scale_fill_manual(values=cols) +
  theme(legend.text=element_text(size=9), 
        legend.key.size=unit(0.2, "cm"),
        axis.text=element_text(face="bold", size=11),
        axis.text.x=element_text(angle=60, hjust=1, size=5.6),
        legend.position="bottom") +  # 범례 위치를 아래로 설정
  guides(fill=guide_legend(nrow=4, reverse=TRUE)) +  
  labs(title="Phylum_TOP8", x="sample", y="proportion") + 
  facet_grid(~State, space="free", scales="free")

pl_P

pl_P


+
  facet_wrap(~State, scales = "free_x", nrow = 1, ncol = 2)





    +coord_flip()+
  theme(legend.position = "bottom")






pl_P


#write.csv(combined_df_phlum, file = "example24442_data.csv", row.names = FALSE)


cols <- c("#FF0000","#0000FF","#00FF00","#000000","#ffff99", "#b15928","#b0e2ff","#6a3d9a", "#b2df8a", "#fb9a99", "#fdbf6f",
          "#cab2d6", "#ffff99", "#458b74"   )







############################################
##########genus top8




#x축 순서 바꾸기(이름은 적어서 바꾸세용)
#pl<-pl+scale_x_discrete(limits=c("virginica", "versicolor", "setosa"))
combined_df_phlum <- combined_df_phlum[combined_df_phlum$name != "Homo", ]

unique(combined_df_phlum$name)


name <- c( "Latilactobacillus", "Dorea", "Companilactobacillus", "Wujia", "Ligilactobacillus", "Roseburia",
           "Coprococcus", "Flavonifractor", "Blautia", "Faecalibacterium", "Streptococcus", "Anaerostipes",
           "Mediterraneibacter", "Faecalitalea", "Lactobacillus", "Lachnoclostridium", "Megamonas",
           "Phascolarctobacterium", "Sellimonas", "Anaerobutyricum", "Pediococcus", "Ruminococcus",
           "Lactiplantibacillus", "Erysipelatoclostridium", "Megasphaera", "Dialister","Enterococcus","Faecalibacillus",
           
           "Bifidobacterium", "Collinsella", "Eggerthella","Adlercreutzia","Parafannyhessea",
           
           "Bacteroides", "Alistipes", "Phocaeicola", "Parabacteroides", "Prevotella",
           
           "Escherichia", "Klebsiella" ,"Haemophilus",
           
           "Akkermansia","Methanobrevibacter", "Others")




name <- c( "Bifidobacterium","Faecalibacterium","Escherichia",
  "Latilactobacillus", "Dorea", "Companilactobacillus", "Wujia", "Ligilactobacillus", "Roseburia",
           "Coprococcus", "Flavonifractor", "Blautia",  "Streptococcus", "Anaerostipes",
           "Mediterraneibacter", "Faecalitalea", "Lactobacillus", "Lachnoclostridium", "Megamonas",
           "Phascolarctobacterium", "Sellimonas", "Anaerobutyricum", "Pediococcus", "Ruminococcus",
           "Lactiplantibacillus", "Erysipelatoclostridium", "Megasphaera", "Dialister","Enterococcus","Faecalibacillus",
           
            "Collinsella", "Eggerthella","Adlercreutzia","Parafannyhessea",
           
           "Bacteroides", "Alistipes", "Phocaeicola", "Parabacteroides", "Prevotella",
           
            "Klebsiella" ,"Haemophilus",
           
           "Akkermansia","Methanobrevibacter", "Others")





combined_df_phlum$name <- factor(combined_df_phlum$name, levels = c(name))






## 지정으로 순서 결정
combined_df_phlum$sample <- factor(combined_df_phlum$sample, levels = c("VT3","VT1",  "VT7", "VT5", "VT9","VT6",     "VT4","VT2",  "VT10",  "VT8", 
                                                                        "HC11", "HC18", "HC21", "HC34", "HC41", "HC49", "HC52", "HC56",
                                                                        "HC12", "HC19", "HC20", "HC28", "HC30", "HC33", "HC40", "HC48", "HC58",
                                                                        "HC7", "HC9", "HC13", "HC17", "HC23", "HC24", "HC35", "HC46", "HC51", "HC53", "HC54",
                                                                        "HC1", "HC4", "HC8", "HC15", "HC38", "HC39", "HC42", "HC55", "HC57"))  # 원하는 순서대로 sample1, sample2, sample3, ...을 나열




pl_P <-ggplot(data=combined_df_phlum ,aes(x= sample , y= fraction_total_reads, fill =name))+ 
  geom_bar(stat="identity" ,position = "fill", width=0.8) + scale_fill_manual(values = cols)+
  theme(legend.text= element_text(size=9), axis.text = element_text(face = "bold",size = 11))+
  theme(legend.key.size = unit(0.2, "cm"))+
  theme(axis.text.x = element_text(angle = 45, hjust = 1,size =8.0))+
  guides(fill = guide_legend(nrow = 20, reverse = FALSE))+
  labs(title = "Genus_TOP8", x = "sample", y = "Taxonomy propotion")+ 
  facet_grid(~State, space="free", scales="free")

pl_P

+
  facet_wrap(~State, scales = "free_x", nrow = 1, ncol = 2)


+coord_flip()+
  theme(legend.position = "bottom")


blue_colors <- colorRampPalette(c("#87cefa","#000080" ))(5)
red_colors <- colorRampPalette(c("#FF3030","#8b0000" ))(27)
green_colors <- colorRampPalette(c("#00FF00","#003300" ))(5)
black_colors <- colorRampPalette(c("#9c9c9c","#171717"))(2)

cols <- c("#9400d3","#00Bfff" ,"#fff68f"
          ,black_colors,green_colors,blue_colors,red_colors)
cols <- rev(cols)

"#3cb371",

cols <- c("#9400d3","#00Bfff" ,"#fff68f",red_colors,blue_colors,green_colors,black_colors
          )





pl_P <- ggplot(data=combined_df_phlum, aes(x=sample, y=fraction_total_reads, fill=name)) + 
  geom_bar(stat="identity", position="fill", width=0.8)+
  scale_fill_manual(values=cols) +
  theme(legend.text=element_text(size=9), 
        legend.key.size=unit(0.2, "cm"),
        axis.text=element_text(face="bold", size=11),
        axis.text.x=element_text(angle=60, hjust=1, size=5.6),
        legend.position="bottom") +  # 범례 위치를 아래로 설정
  guides(fill=guide_legend(nrow=8, reverse=TRUE)) +  
  labs(title="Genus_TOP8", x="sample", y="proportion") + 
  facet_grid(~State, space="free", scales="free")


















##########speicies top5




combined_df_phlum <- combined_df_phlum[combined_df_phlum$name != "Homo sapiens", ]

unique(combined_df_phlum$name)


name <- c( "Anaerobutyricum hallii", "[Ruminococcus] gnavus", "Ligilactobacillus salivarius", "[Ruminococcus] torques", 
           "Megasphaera elsdenii", "Streptococcus lutetiensis", 
           "Ruminococcus bicirculans", "Faecalibacterium prausnitzii", "Blautia obeum", "Ruminococcus sp. FMBCY1", "Blautia sp. SC05B48", 
           "Megamonas funiformis", "Roseburia sp. NSJ-69", 
           "Erysipelatoclostridium ramosum", "Blautia massiliensis", "Anaerostipes hadrus", "Faecalibacterium duncaniae", 
           "Wujia chipingensis", "Streptococcus salivarius", 
           "Coprococcus sp. ART55/1", "Enterococcus hirae", "Simiaoa sunii", "Latilactobacillus sakei", 
           "Dorea longicatena", "Pediococcus acidilactici", "Faecalitalea cylindroides", "Ligilactobacillus ruminis", 
           "Roseburia intestinalis", "Parafannyhessea umbonata"   ,       #29 Firm
           
           
           "Bifidobacterium pseudocatenulatum", 
           "Bifidobacterium bifidum",
           "Bifidobacterium breve",
           "Bifidobacterium longum", 
           "Bifidobacterium catenulatum", "Bifidobacterium adolescentis", 
           "Collinsella aerofaciens", "Adlercreutzia equolifaciens",
           "Eggerthella lenta" ,      # Actino 9 개
           
           "Parabacteroides distasonis", "Alistipes onderdonkii", "Bacteroides thetaiotaomicron", "Bacteroides fragilis",  
           "Parabacteroides merdae", "Phocaeicola coprophilus", "Bacteroides stercoris", "Phocaeicola vulgatus",
           "Bacteroides cellulosilyticus", "Bacteroides sp. M10", "Bacteroides uniformis",
           "Phocaeicola dorei", "Bacteroides ovatus" ,"Prevotella copri", # Bacterio 14개
           
           "Vibrio sp. Scap24",   "Escherichia coli",   #프로테오 2개
           
           "uncultured crAssphage",
           "Akkermansia muciniphila",
           "Methanobrevibacter smithii",     #기타등등 3개
           
           "Others" )

name <- rev(name)

combined_df_phlum$name <- factor(combined_df_phlum$name, levels = c(name))


## 지정으로 순서 결정
combined_df_phlum$sample <- factor(combined_df_phlum$sample, levels = c("VT6","VT2","VT10","VT7","VT8","VT4","VT3","VT1","VT9","VT5",
                                                                        
                                                                        
                                                                        "HC32","HC3", "HC59","HC7","HC23","HC62",
                                                                        "HC16","HC14", "HC5","HC25","HC52","HC41",
                                                                        "HC21","HC54","HC6", "HC13","HC34","HC1",
                                                                        "HC45","HC39","HC10","HC11", 
                                                                        
                                                                        "HC40", "HC31"  ,"HC26","HC47","HC61","HC36",
                                                                        "HC17","HC51","HC8",  "HC29","HC33",  "HC35", 
                                                                        "HC20", "HC46","HC12","HC44", "HC43","HC49", "HC50", 
                                                                        "HC53","HC24", 
                                                                        "HC2",   "HC4","HC60","HC48","HC15", "HC42","HC9",  "HC27",
                                                                        "HC37","HC55",  "HC38","HC18", "HC58","HC22",    "HC28",  "HC30", "HC19", "HC56","HC57"))  # 원하는 순서대로 sample1, sample2, sample3, ...을 나열



pl_P <-ggplot(data=combined_df_phlum ,aes(x= sample , y= fraction_total_reads, fill =name))+ 
  geom_bar(stat="identity" ,position = "fill", width=0.8) + scale_fill_manual(values = cols)+
  theme(legend.text= element_text(size=9), axis.text = element_text(face = "bold",size = 11))+
  theme(legend.key.size = unit(0.2, "cm"))+
  theme(axis.text.x = element_text(angle = 45, hjust = 1,size =6.0))+
  guides(fill = guide_legend(nrow = 20, reverse = TRUE))+
  labs(title = "Phylum_TOP8", x = "sample", y = "Ratio")+ 
  facet_grid(~State, space="free", scales="free")

pl_P <- ggplot(data=combined_df_phlum, aes(x=sample, y=fraction_total_reads, fill=name)) + 
  geom_bar(stat="identity", position="fill", width=0.8)+
  scale_fill_manual(values=cols) +
  theme(legend.text=element_text(size=9), 
        legend.key.size=unit(0.2, "cm"),
        axis.text=element_text(face="bold", size=11),
        axis.text.x=element_text(angle=60, hjust=1, size=5.6),
        legend.position="bottom") +  # 범례 위치를 아래로 설정
  guides(fill=guide_legend(nrow=15, reverse=TRUE)) +  
  labs(title="Species_TOP5", x="sample", y="proportion") + 
  facet_grid(~State, space="free", scales="free")
+
  facet_wrap(~State, scales = "free_x", nrow = 1, ncol = 2)


+coord_flip()+
  theme(legend.position = "bottom")






blue_colors <- colorRampPalette(c("#87cefa","#000080" ))(9)
red_colors <- colorRampPalette(c("#FF3030","#8b0000" ))(29)
green_colors <- colorRampPalette(c("#00FF00","#003300" ))(14)
black_colors <- colorRampPalette(c("#9c9c9c","#171717"))(2)

cols <- c("#9400d3","#7fffd4","#3cb371","#fff68f"
          ,black_colors,green_colors,blue_colors,red_colors)






