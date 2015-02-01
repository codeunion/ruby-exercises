def pig_latin(word)
  vowels = ["a", "e", "i", "o", "u"]
  suffix = "ay"
  consonant_array = []
  pig_latin = []
  char_array = word.split(//)

  char_array.each do |letter|
    if vowels.include?(letter)
      pig_latin.push(letter)
    elsif pig_latin.length == 0 # no vowel found yet
        consonant_array.push(letter)
    else
        pig_latin.push(letter)
    end
  end

  pig_latin += consonant_array

  pig_latin.join + suffix
end

if __FILE__ == $0
  p pig_latin("happy") == "appyhay"
  p pig_latin("duck")  == "uckday"
  p pig_latin("glove") == "oveglay"
  p pig_latin("egg")   == "eggay"
  p pig_latin("inbox") == "inboxay"
  p pig_latin("eight") == "eightay"
end
