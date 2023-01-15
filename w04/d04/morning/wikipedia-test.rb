require 'wikipedia'
def wikisearch(var)
eightyeight_array = Wikipedia::article "#{var}"
new_88_array = []

lengthcalc = eightyeight_array.join(" ").split.select do |word|
               if word.include? "a"
                   word
                elsif word.include? "o"
                  word
             end
          end

lengthcalc.map do |x|
        if x.length >= 3
          new_88_array.push(x)
        end
      end
shuffle88_arr = new_88_array.shuffle
print shuffle88_arr[rand(1..10)..rand(11..22)].join(" ")
end
