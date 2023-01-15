require_relative "./grandma.rb"

grandma = Grandma.new
response = ""
while response != "Q"
  puts "ask Granny a question or type 'Q' to quit"
  response = gets.chomp
  grandma.listen(response)
end