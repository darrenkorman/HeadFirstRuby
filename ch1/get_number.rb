puts "Welcome to 'Get my number'"
print "What is your name? "

input = gets
name = input.chomp

# puts input.inspect
# p input
# puts name.methods

puts "Welcome, #{name}!"

target = rand(100) + 1
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"

num_guesses = 0
guessed_correctly = false

until num_guesses == 10 || guessed_correctly

    puts "You've got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1

    if guess < target
        puts "Oops, your guess was LOW."
    elsif guess > target
        puts "Oops, your guess was HIGH."
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_correctly = true
    end

end

unless guessed_correctly
    puts "Sorry, you didn't guess my number. (It was #{target})"
end