# This script will generate a random password for the user.
import random


def generate_password(length):
    characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-"
    password = ""
    for i in range(length):
        password = password + random.choice(characters)
    return password


def main():
    print("Welcome to the Passwords Generator")
    password_length = int(input("Enter the length of the password you want: "))
    password = generate_password(password_length)
    print("Your new password is:", password)


if __name__ == "__main__":
    main()
