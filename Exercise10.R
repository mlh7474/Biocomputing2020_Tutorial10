#Question 1

#read score file
gamestats <- read.table("UWvMSU_1-22-13.txt", header =TRUE, stringsAsFactors = FALSE )

#separate UW and MSU into two separate df
MSU <- gamestats[gamestats$team == 'MSU',]

UW <- gamestats[gamestats$team == 'UW',]


#do sum of scores

MSU_vec = NULL
for(i in 1:nrow(MSU)){
  MSU_sum <- MSU_sum+MSU$score[i]
  MSUvec[i] = paste(MSU_sum)
  
}

UW_sum
UW_vec = 0
for(i in 1:nrow(UW)){
  UW_sum <- UW_sum+UW$score[i]
  UWvec[i] = paste(UW_sum)
}

#plot
plot(x,y, type = 'l', lines(UW_vec,MSU_vec))



#Question 2:
#select random number between 1 and 100
number <- sample(seq(1:100), size = 1)


#ask user to guess a number
guess = readline(prompt = "Guess a number between 1-100 : ");

#change input to integer so it can be compared to the random number
guess = as.integer(guess)

#print either higher, lower, or "you guessed it" depending on what the guess is
for(i in 1:10){
if(guess > number){print("Lower")
  }
else if(guess < number){print("Higher")
  }
else{print("You guessed it") break
  }
}
