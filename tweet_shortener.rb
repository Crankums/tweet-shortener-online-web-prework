# Write your code here.
def dictionary
words = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4",
"be" => "b", "you" => "u", "at" => "2", "and" => "&"}
end

def word_substituter(string)
  counter = 0
  tweet_ary = string.split(/ /)
  tweet_ary.each do |word|
    while counter<tweet_ary.length
      if dictionary.keys.include?(word)
        dictionary.each do |key, subst|
          if key == word
            tweet_ary[counter] = subst
          end
        end
        counter+=1
      end
    end
  end
tweet_ary.join(" ")
end
