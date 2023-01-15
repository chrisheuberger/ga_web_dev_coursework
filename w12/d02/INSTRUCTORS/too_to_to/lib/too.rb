# Instructor Solution
def too_to_to(string)
  string.gsub!(/(\w)(\1+)/, '\1')
end

# # Nessa's Solution
# def too_to_to(string)
#   array = string.split('')
#   (array.length / 2).times {
#     i = 0
#     while i < array.length do
#       if array[i] === array[i-1]
#         array.delete_at(i)
#       end
#       i += 1
#     end
#   }
#   array.join('')
# end

# # Kristen's Solution
# def too_to_to(string)
#   string.squeeze()
# end
