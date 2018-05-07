def complex_ints n
    results = Array.new
    puts Math.sqrt(n)
    (1..Math.sqrt(n).round).each do |int|
        if n % int == 0
            results << n/int + int
        end
    end
    results.sort[0]
end


puts complex_ints 12
puts complex_ints 456
puts complex_ints 4567
puts complex_ints 12345

# Bonus 1
start = Time.now
res = complex_ints 1234567891011
finish = Time.now
puts "The result is #{res}. It took #{finish-start} seconds to calculate."
