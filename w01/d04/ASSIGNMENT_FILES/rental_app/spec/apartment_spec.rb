require 'rspec'
require_relative '../apartment'

describe Apartment do

  def new_apartment
    Apartment.new('6F', 2400, 800, 2, 1)
  end

  it 'has a changeable unit number' do
    apartment = new_apartment
    expect(apartment.unit).to eq '6F'
    apartment.unit = '5F'
    expect(apartment.unit).to eq '5F'
  end

  it 'has a changeable rent' do
    apartment = new_apartment
    expect(apartment.rent).to eq 2400
    apartment.rent = 3400
    expect(apartment.rent).to eq 3400
  end

  it 'has a changeable square footage' do
    apartment = new_apartment
    expect(apartment.sqft).to eq 800
    apartment.sqft = 700
    expect(apartment.sqft).to eq 700
  end

  it 'has a changeable number of bedrooms' do
    apartment = new_apartment
    expect(apartment.bedrooms).to eq 2
    apartment.bedrooms = 3
    expect(apartment.bedrooms).to eq 3
  end

  it 'has a changeable number of bathrooms' do
    apartment = new_apartment
    expect(apartment.bathrooms).to eq 1
    apartment.bathrooms = 2
    expect(apartment.bathrooms).to eq 2
  end

  it 'tells you whether or not it is occupied' do
    apartment = new_apartment
    expect(apartment.occupied?).to be_false
  end

  it 'lets you add tenants' do
    apartment = new_apartment
    apartment.tenants.push Object.new
    expect(apartment.occupied?).to be_true
  end

  it 'can describe itself' do
    apartment = new_apartment
    profile = '6F costs $2400 a month, has 800 sqft, has 2 bedrooms and 1 bathrooms.'
    expect(apartment.to_s).to eq profile
  end
end
