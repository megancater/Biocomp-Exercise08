# Megan Cater
# guessNumber.R

# clears the environment
rm(list=ls())

# generates a random number
print('I\'m thinking of a number 1-100...')
num = sample(1:100, 1)

guessed = FALSE

# user keeps guessing until number is guessed
while(!guessed) {
  # gets user input
  var = readline(prompt = 'Guess: ')
  var = as.integer(var)
  
  # displays if guessed or hint based on guess
  if (var > num) {
    print('Lower')
  } else if (var < num) {
    print('Higher')
  } else {
    print('Correct!')
    guessed = TRUE
  }
}
