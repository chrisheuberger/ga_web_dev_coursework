require 'watir'
require 'watir-webdriver'
require 'faker'

100.times do

	browser = Watir::Browser.new
	browser.goto 'http://obscure-beach-9557.herokuapp.com/people/new'
	browser.text_field(:id => 'person_name').set Faker::Name.name
	browser.text_field(:id => 'person_jobtitle').set Faker::Company.name
	browser.button(:type => 'submit').click
	browser.close

end
