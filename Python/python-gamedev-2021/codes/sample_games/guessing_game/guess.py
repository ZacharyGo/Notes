# simple guessing game
# uses if,loop,list and random generator
# 20210811 - ZSG
import random

print('Guessing Game')

number = random.randint(0,100)
correct_guess = False

while(correct_guess == False):
    try:
        guess = int(input("Enter your guess number : "))        
    except:
        print("Please enter a valid number")
    else:
        if (guess == number):
            print("you are correct")
            correct_guess = True
        elif guess > number:
            print("The number is higher")
        else:
            print("The number is lower")
        
        
    
        
print(number)