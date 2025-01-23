#!/usr/bin/env bash

guess_files() {
    local file_count=$(ls -1 | wc -l) 
    local guess=-1

    echo "Guess how many files are in the current directory:"
    while [[ $guess -ne $file_count ]]; do
        read -p "Enter your guess: " guess
        if [[ $guess -lt $file_count ]]; then
            echo "Your guess is too low. Try again."
        elif [[ $guess -gt $file_count ]]; then
            echo "Your guess is too high. Try again."
        else
            echo "Congratulations! You guessed correctly."
        fi
    done
}

guess_files
