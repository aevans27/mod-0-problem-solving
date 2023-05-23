#5. Given a sentence with only lowercase letters, 
#print the same sentence with the first letter of every word capitalized.
# For example, if you were given "Turing is the best", 
#return "Turing Is The Best" instead!

# The data type is going to be strings
# The request is pretty straight forward
# Assuming that only strings will be used, this will likely
# require every seperate word in a string to be examined and subbed
# Need to look up methods for strings that would help me in subbing
# specific characters.
# Explanation for myself; /(\s+\w)/ means it is subbing the character
# with a space before it to be capital.  Looking for explanations
# for what specific characters do in a method is hard

def word_capper(phrase_used)
    phrase_used.capitalize.gsub(/(\s+\w)/) { |word| word.upcase }
end

puts word_capper("hello this is a test")

#6. Write a method or function that determines how much a person
# will pay in taxes in the United States based on their annual income. 
#The method or function should accept a number representing the individual's 
#annual income as an argument and return the amount they will owe in taxes for that year.

# The data types will be floats or integers
# I need to refer to the IRS doc to get right percentages
# This will need a boolean along with floats for married couples
# I don't think anything for this problem

def taxes(year_amount, is_married)
    amount = year_amount.to_f
    tax_rate = 0.0
    if is_married
        if amount >= 647850.00
            tax_rate = 0.37
        elsif amount >= 431900.00 && amount < 647850.00
            tax_rate = 0.35
        elsif amount >= 340100.00 && amount < 431900.00
            tax_rate = 0.32
        elsif amount >= 178150.00 && amount < 340100.00
            tax_rate = 0.24
        elsif amount >= 83550.00 && amount < 178150.00
            tax_rate = 0.22
        elsif amount >= 20550.00 && amount < 83550.00
            tax_rate = 0.12
        else
            tax_rate = 0.1
        end
    else
        if amount >= 539900.00
            tax_rate = 0.37
        elsif amount >= 215950.00 && amount < 539900.00
            tax_rate = 0.35
        elsif amount >= 170050.00 && amount < 215950.00
            tax_rate = 0.32
        elsif amount >= 89075.00 && amount < 170050.00
            tax_rate = 0.24
        elsif amount >= 41775.00 && amount < 89075.00
            tax_rate = 0.22
        elsif amount >= 10275.00 && amount < 41775.00
            tax_rate = 0.12
        else
            tax_rate = 0.1
        end
    end
    (amount * tax_rate).round(2)
end

puts "You owe #{taxes(55555555, false)} in taxes"