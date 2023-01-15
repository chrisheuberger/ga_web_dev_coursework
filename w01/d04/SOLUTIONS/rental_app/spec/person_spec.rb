require 'rspec'
require_relative '../person'

describe Person do

  def new_person
    person = Person.new('Rebecca', 25, 100_000)
  end

  it 'has a changeable name' do
    person = new_person
    expect(person.name).to eq 'Rebecca'
    person.name = 'Becca'
    expect(person.name).to eq 'Becca'
  end

  it 'has a changeable age' do
    person = new_person
    expect(person.age).to eq 25
    person.age = 26
    expect(person.age).to eq 26
  end

  it 'has a changeable income' do
    person = new_person
    expect(person.income).to eq 100_000
    person.income = 150_000
    expect(person.income).to eq 150_000
  end

  it 'can describe itself' do
    person = new_person
    profile = "Rebecca is 25 years old and earns $100000 per year."
    expect(person.to_s).to eq profile
  end
end
