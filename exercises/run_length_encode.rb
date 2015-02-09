#Rather than keep track of comparison_char in this way, why not compare array[i] to array[i+1]?

def run_length_encode(string)
  compressed_array = []
  run_length = 1 # First char always has run_length of at least 1.
  array = string.each_char.to_a

  array.each_index do |i|
    if array[i] == array[i+1]
      run_length += 1

      if i == array.length-1
        compressed_array.push(run_length.to_s + array[i])
      end

    else
      compressed_array.push(run_length.to_s + array[i])

      run_length = 1
    end
  end

  compressed_array.join
end

if __FILE__ == $0
  p run_length_encode("WWWWWWAAAAAAWWWWWWAAAAAABBBBBB") == "6W6A6W6A6B"
  p run_length_encode("A")                              == "1A"
  p run_length_encode("AB")                             == "1A1B"
  p run_length_encode("Mississippi")                    == "1M1i2s1i2s1i2p1i"
end
