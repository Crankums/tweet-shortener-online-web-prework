# Write your code here.
def dictionary
words = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4",
"be" => "b", "you" => "u", "at" => "2", "and" => "&"}
end

def word_substituter(string)
  tweet_ary = string.split
  tweet_ary.collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end

  end
end
