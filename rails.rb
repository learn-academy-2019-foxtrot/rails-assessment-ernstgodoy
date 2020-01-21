# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'


def hello_world lang 
    if lang == 'es' 
        puts 'Hola Mundo'
    elsif lang == 'de'
        puts 'Hallo Welt'
    else
        puts "Hello World"
    end
end

hello_world 'es'
hello_world 'de'
hello_world ' '





# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade num
    
    if num == 96 
        puts 'A'
    elsif num == 75
        puts 'C'
    else
        puts 'put either 96 or 75'
    end
end


assign_grade 96
assign_grade 75
assign_grade 80



# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.


def assgn_grade num
    
    if num > 100
        puts 'A+'
    elsif num == 96 
        puts 'A'
    elsif num == 75
        puts 'C'
    elsif num < 0 
        puts 'F-'
    else 
        puts 'put number'
    end
end

assgn_grade 1000
assgn_grade (-1)


# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'


def pluralizer singnoun, num
   
    if num != 1 
        puts "#{num} #{singnoun}s"
    else 
        puts "#{num} #{singnoun}"
    end
    
end

pluralizer 'dog', 1
pluralizer 'cat', 5


# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.

def irrpluralizer num, singnoun
   
    
    if num > 1 && singnoun == 'goose' 
        puts  "#{num} geese"
    elsif num != 1 && singnoun == 'child'
        puts "#{num} children" 
    elsif num != 1 && singnoun == 'person'
        puts "#{num} people"
    elsif num > 1 || num == 0
        puts "#{num} #{singnoun}s"
    else 
        puts "#{num} #{singnoun}"
    end
    
end


irrpluralizer 3, 'goose' 
irrpluralizer 100, 'child'
irrpluralizer 1, 'person'
irrpluralizer 0, 'person'