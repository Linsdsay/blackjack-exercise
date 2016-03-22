# Assignment - Week1 W-
#
# Blackjack Advisor
#
# Description- Create a program which will take information about a current blackjack hand
# and return the optimal action for the player to take.
#
# Objectives- After completing this assignment, you should...
#   Understand complex data structures and how they can store multi-dimensional data.
#   Be able to create and use hashes.
#   Be able to create and use nested data structures.
#   Be able to write READMEs in Markdown.
#
# Deliverables -
#   A GitHub repository.
#   A Ruby file called blackjack_advisor.rb
#   A README. This document must contain a description of your program, what it is for, and how to
#     use it. It must be called README.md and be written in Markdown.
#   A series of commits on that repository. Not just one at the end!
#
# After your work is complete, make sure to git push your changes up to GitHub. Feel free to do this
# more than once along the way of course.
#
# Use the homework submission form on the course website to turn in a link to your GitHub repository.
#
# Normal Mode-
#
#   Although Blackjack is a game of chance, it is simple enough that the mathematically optimal next
#   move can be given for any hand. Don't worry, though; I won't be asking you to calculate them.
#   Your goal for this assignment is to store the set of optimal moves for a 1 deck blackjack hand, ask
#   the user for his or her current hand (and the dealer's card up), then give the user his or her
#   optimal move.
#
#   The set of optimal moves can be found here. For normal mode, use the default settings that occur on
#   this page when you load it (1 deck, etc.)
#
#   Just to be clear, you do NOT have to understand the full rules of Blackjack to complete this assignment.
#   Normal mode is only asking for advice on your FIRST decision, so please don't worry about what happens
#   after you choose "Hit." Here's one more hint: in this limited scenario, your hand is soft if you have
#   a single Ace and hard if you do not (a pair is a pair regardless of whether they are Aces).
#
#   Your program must use hashes or arrays within a hash (at least) to solve this problem.
#
#   The prompts to the user should go something like this:
#
#     * Please enter your first card:
#     * (user enters 9)
#     * Please enter your second card:
#     * (user enters 9)
#     * Please enter the dealer's card:
#     * (user enters 7)
#     * Your optimal move is to stand.
#
#   You can either allow the user to enter J, Q, or K for Jack, Queen, King, respectively, or you can
#   expect the user to enter a 10 for any of these. However, the user should have to enter A for an Ace.



# Hard Mode - In addition to the three inputs give above, allow the user to also specify
#   whether the game is being played with 1 deck, 2 decks, or 4 or more decks.
#
# Nightmare Mode - Modify your hard mode game to allow the program to continue running
#   the case of a hit. If it suggests that you hit, it should ask you what card you
#   received on your hit. It should then continue to offer you additional advice until the
#   hand is over (i.e. until it tells you do something other than hit.)

# my hard hash is equal to an array as the key and the value is hit.
# first number in the array will be the player total of the cards, second number is the dealers card.
hash_hard = {[5,2] => "H", [5,3] => "H", [5,4] => "H", [5,5] => "H", [5,6] => "H",
[5,7] =>"H", [5,8] => "H", [5,9] => "H", [5,10] => "H", [5,"A"] => "H", [6,2] => "H",
[6,3] => "H", [6,4] => "H", [6,5] => "H", [6,6] => "H", [6,7] => "H", [6,8]=> "H",
[6,9] => "H", [6,10] => "H", [6,"A"] => "H", [7,2] => "H", [7,3] => "H", [7,4] => "H",
[7,5] => "H", [7,6] => "H", [7,7] => "H", [7,8] => "H", [7,9] => "H", [7,10] => "H",
[7,"A"] => "H", [8,2] => "H", [8,3] => "H", [8,4] => "H", [8,5] => "Dh", [8,6] => "Dh",
[8,7] => "H", [8,8] => "H", [8,9] => "H", [8,10] => "H", [8,"A"] => "H",[9,2] => "Dh",
[9,3] => "Dh", [9,4] => "Dh", [9,5] => "Dh", [9,6] => "Dh", [9,7] => "H", [9,8] => "H",
[9,9] => "H", [9,10] => "H",[9,"A"] => "H", [10,2] => "Dh", [10,3] => "Dh",[10,4] => "Dh",
[10,5] => "Dh", [10,6] => "Dh", [10,7] => "Dh", [10,8] => "Dh", [10,9] => "Dh", [10,10] => "H",
[10,"A"] => "H", [11,2] => "dH", [11,3] => "dH", [11,4] => "dH", [11,5] => "dH", [11,6] => "dH",
[11,7] => "dH", [11,8] => "dH", [11,9] => "dH", [11,10] => "dH", [11,"A"] => "dH", [12,2] => "H",
[12,3] => "H", [12,4] => "S", [12,5] => "S", [12,6] => "S", [12,7] => "H", [12,8] => "H",
[12,9] => "H", [12,10] => "H", [12,"A"] => "H", [13,2] => "S", [13,3] => "S", [13,4] => "S",
[13,5] => "S", [13,6] => "S", [13,7] => "H", [13,8] => "H", [13,9] => "H", [13,10] => "H",
[13,"A"] => "H", [14,2] => "S", [14,3] => "S", [14,4] => "S", [14,5] => "S", [14,6] => "S", [14,7] => "H",
[14,8] => "H", [14,9] => "H", [14,10] => "H", [14,"A"] => "H", [15,2] => "S", [15,3] => "S",
[15,4] => "S", [15,5] => "S", [15,6] => "S", [15,7] => "H", [15,8] => "H", [15,9] => "H", [15,10] => "H",
[15,"A"] => "H", [16,2] => "S", [16,3] => "S", [16,4] => "S", [16,5] => "S", [16,6] => "S", [16,7] => "H",
[16,8] => "H", [16,9] => "H", [16,10] => "H", [16,"A"] => "H",

[17,2] => "S",
[17,3] => "S",
[17,4] => "S",
[17,5] => "S",
[17,6] => "S",
[17,7] => "S",
[17,8] => "S",
[17,9] => "S",
[17,10] => "S",
[17,"A"] => "S",

[18,2] => "S",
[18,3] => "S",
[18,4] => "S",
[18,5] => "S",
[18,6] => "S",
[18,7] => "S",
[18,8] => "S",
[18,9] => "S",
[18,10] => "S",
[18,"A"] => "S",

[19,2] => "S",
[19,3] => "S",
[19,4] => "S",
[19,5] => "S",
[19,6] => "S",
[19,7] => "S",
[19,8] => "S",
[19,9] => "S",
[19,10] => "S",
[19,"A"] => "S",

[20,2] => "S",
[20,3] => "S",
[20,4] => "S",
[20,5] => "S",
[20,6] => "S",
[20,7] => "S",
[20,8] => "S",
[20,9] => "S",
[20,10] => "S",
[20,"A"] => "S",

[21,2] => "S",
[21,3] => "S",
[21,4] => "S",
[21,5] => "S",
[21,6] => "S",
[21,7] => "S",
[21,8] => "S",
[21,9] => "S",
[21,10] => "S",
[21,"A"] => "S",

}

hash_soft = {
  [13,2] => "H",
  [13,3] => "H",
  [13,4] => "Dh",
  [13,5] => "Dh",
  [13,6] => "Dh",
  [13,7] => "H",
  [13,8] => "H",
  [13,9] => "H",
  [13,10] => "H",
  [13,"A"] => "H",

  [14,2] => "H",
  [14,3] => "H",
  [14,4] => "Dh",
  [14,5] => "Dh",
  [14,6] => "Dh",
  [14,7] => "H",
  [14,8] => "H",
  [14,9] => "H",
  [14,10] => "H",
  [14,"A"] => "H",

  [15,2] => "H",
  [15,3] => "H",
  [15,4] => "Dh",
  [15,5] => "Dh",
  [15,6] => "Dh",
  [15,7] => "H",
  [15,8] => "H",
  [15,9] => "H",
  [15,10] => "H",
  [15,"A"] => "H",

  [16,2] => "H",
  [16,3] => "H",
  [16,4] => "Dh",
  [16,5] => "Dh",
  [16,6] => "Dh",
  [16,7] => "H",
  [16,8] => "H",
  [16,9] => "H",
  [16,10] => "H",
  [16,"A"] => "H",

  [17,2] => "Dh",
  [17,3] => "Dh",
  [17,4] => "Dh",
  [17,5] => "Dh",
  [17,6] => "Dh",
  [17,7] => "H",
  [17,8] => "H",
  [17,9] => "H",
  [17,10] => "H",
  [17,"A"] => "H",

  [18,2] => "S",
  [18,3] => "Ds",
  [18,4] => "Ds",
  [18,5] => "Ds",
  [18,6] => "Ds",
  [18,7] => "S",
  [18,8] => "S",
  [18,9] => "H",
  [18,10] => "H",
  [18,"A"] => "S",

  [19,2] => "S",
  [19,3] => "S",
  [19,4] => "S",
  [19,5] => "S",
  [19,6] => "Ds",
  [19,7] => "S",
  [19,8] => "S",
  [19,9] => "S",
  [19,10] => "S",
  [19,"A"] => "S",

  [20,2] => "S",
  [20,3] => "S",
  [20,4] => "S",
  [20,5] => "S",
  [20,6] => "S",
  [20,7] => "S",
  [20,8] => "S",
  [20,9] => "S",
  [20,10] => "S",
  [20,"A"] => "S",

  [21,2] => "S",
  [21,3] => "S",
  [21,4] => "S",
  [21,5] => "S",
  [21,6] => "S",
  [21,7] => "S",
  [21,8] => "S",
  [21,9] => "S",
  [21,10] => "S",
  [21,"A"] => "S",

}

hash_pair = {

  [2,2] => "P",
  [2,3] => "P",
  [2,4] => "P",
  [2,5] => "P",
  [2,6] => "P",
  [2,7] => "P",
  [2,8] => "H",
  [2,9] => "H",
  [2,10] => "H",
  [2,"A"] => "H",

  [3,2] => "P",
  [3,3] => "P",
  [3,4] => "P",
  [3,5] => "P",
  [3,6] => "P",
  [3,7] => "P",
  [3,8] => "P",
  [3,9] => "H",
  [3,10] => "H",
  [3,"A"] => "H",

  [4,2] => "H",
  [4,3] => "H",
  [4,4] => "P",
  [4,5] => "P",
  [4,6] => "P",
  [4,7] => "H",
  [4,8] => "H",
  [4,9] => "H",
  [4,10] => "H",
  [4,"A"] => "H",

  [5,2] => "Dh",
  [5,3] => "Dh",
  [5,4] => "Dh",
  [5,5] => "Dh",
  [5,6] => "Dh",
  [5,7] => "Dh",
  [5,8] => "Dh",
  [5,9] => "Dh",
  [5,10] => "H",
  [5,"A"] => "H",

  [6,2] => "P",
  [6,3] => "P",
  [6,4] => "P",
  [6,5] => "P",
  [6,6] => "P",
  [6,7] => "P",
  [6,8] => "H",
  [6,9] => "H",
  [6,10] => "H",
  [6,"A"] => "H",

  [7,2] => "P",
  [7,3] => "P",
  [7,4] => "P",
  [7,5] => "P",
  [7,6] => "P",
  [7,7] => "P",
  [7,8] => "P",
  [7,9] => "H",
  [7,10] => "S",
  [7,"A"] => "H",

  [8,2] => "P",
  [8,3] => "P",
  [8,4] => "P",
  [8,5] => "P",
  [8,6] => "P",
  [8,7] => "P",
  [8,8] => "P",
  [8,9] => "P",
  [8,10] => "P",
  [8,"A"] => "P",

  [9,2] => "P",
  [9,3] => "P",
  [9,4] => "P",
  [9,5] => "P",
  [9,6] => "P",
  [9,7] => "S",
  [9,8] => "P",
  [9,9] => "P",
  [9,10] => "S",
  [9,"A"] => "S",


  [10,2] => "S",
  [10,3] => "S",
  [10,4] => "S",
  [10,5] => "S",
  [10,6] => "S",
  [10,7] => "S",
  [10,8] => "S",
  [10,9] => "S",
  [10,10] => "S",
  [10,"A"] => "S",


  ["A",2] => "P",
  ["A",3] => "P",
  ["A",4] => "P",
  ["A",5] => "P",
  ["A",6] => "P",
  ["A",7] => "S",
  ["A",8] => "P",
  ["A",9] => "P",
  ["A",10] => "P",
  ["A","A"] => "P",

}


hash_symbols = {
  "H" => "Hit", "S" => "Stand", "P" => "Split", "Dh" => "Double if possible, otherwise Hit",
  "Ds" => "Double if possible, otherwise Stand"
}


# puts hash_hard[[5,2]]


puts "Please enter your first card (enter 10 for either jack, queen, king and A for ace)."
first_card = gets.chomp
  if first_card.to_i.to_s == first_card.to_s  # use and define a method to check to see if is a number
    puts "we have a number"
    first_card_number = first_card.to_i
  elsif first_card == "A"
    puts "we have an ace."
    first_card_number = 11
  else
    puts "not a valid input, try again."
  end

#loop do # this loop is now breaking my code... otherwise it was working. come back to loop
  puts "Please enter your second card"
  second_card = gets.chomp
  if second_card.to_i.to_s == second_card.to_s  # use and define a method to check to see if is a number
    puts "we have a number"
    second_card_number = second_card.to_i
    # break
  elsif second_card == "A"
    puts "we have an ace."
    second_card_number = 11
    # break
  else
    puts "not a valid input, try again."
    # need to have it repeat this and ask again. adding a loop here messing me up...
  end
# end

puts "Please enter the dealer's card"
dealers_card = gets.chomp
if dealers_card.to_i.to_s == dealers_card.to_s  # use and define a method to check to see if is a number
  puts "we have a number"
  dealers_card_number = dealers_card.to_i
elsif dealers_card  == "A"
  puts "we have an ace."
  dealers_card_number = "A"
else
  puts "not a valid input, try again."
end

total_num_cards = first_card_number + second_card_number

#puts hash_hard[[total_num_cards, dealers_card_number]]

if first_card != "A" && second_card != "A"
  hash_hard_result = hash_hard[[total_num_cards, dealers_card_number]]  # should make this a method.
  puts "your optimal move is: #{hash_symbols[hash_hard_result]}"
elsif first_card == "A" && second_card != "A"
  hash_soft_results = hash_soft[[total_num_cards, dealers_card_number]]
  puts hash_soft_results
  puts "your optimal move is: #{hash_symbols[hash_soft_results]}"
elsif first_card != "A" && second_card == "A"
  hash_soft_results_reverse = hash_soft[[total_num_cards, dealers_card_number]]
  puts hash_soft_results_reverse
  puts "your optimal move is: #{hash_symbols[hash_soft_results_reverse]}"
elsif first_card == "A" && second_card == "A" && dealers_card_number == "A"
  hash_triplethreat_results = hash_pair[[first_card, dealers_card_number]]
  puts hash_triplethreat_results
  puts "your optimal move is: #{hash_symbols[hash_triplethreat_results]}"
else first_card == second_card
  hash_pair_results = hash_pair[[first_card_number, dealers_card_number]]
  puts hash_pair_results
  puts "your optimal move is: #{hash_symbols[hash_triplethreat_results]}"
end
