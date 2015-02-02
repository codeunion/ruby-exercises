def run_length_encode(string)
  compressed_array = []
  run_length = 0
  array = string.each_char.to_a
  comparison_char = array.first

  array.each_index do |i|

    if comparison_char == array[i]
      run_length += 1

      if i == array.length-1
        compressed_array.push(run_length.to_s + comparison_char)
      end

    else
      compressed_array.push(run_length.to_s + comparison_char)

      comparison_char = array[i]
      run_length = 1

      if i == array.length-1
        compressed_array.push(run_length.to_s + comparison_char)
      end
    end
  end

  compressed_array.join
end

if __FILE__ == $0
  p run_length_encode("WWWWWWAAAAAAWWWWWWAAAAAABBBBBB") == "6W6A6W6A6B"
  p run_length_encode("A") == "1A"
  p run_length_encode("AB") == "1A1B"
  p run_length_encode("Mississippi") == "1M1i2s1i2s1i2p1i"
end
