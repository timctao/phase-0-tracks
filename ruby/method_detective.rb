# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# => “zoom”

# or

"zom".insert(-2, "o")
# => "zoom"

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual" << " suspects"
#=> "the usual suspects"

# or

"Sherlock Holmes is".concat(" really cool!")
# => "Sherlock Holmes is really cool!"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

first_letter_gone = "The mystery of the missing first letter"
first_letter_gone.slice!(0)
p first_letter_gone
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# => .ord displays the integer ordinal of a one character string

"How many times does the letter 'a' appear in this string?".count "a"
# => 4