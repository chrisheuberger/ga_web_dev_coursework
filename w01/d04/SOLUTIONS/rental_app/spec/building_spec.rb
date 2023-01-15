require 'rspec'
require_relative '../building'

describe Building do
  def new_building
    Building.new('21 East 21st Street', 'Art-Deco', 8)
  end
  # address, style, floors, (apartment count)
  it 'has a changeable address' do
    building = new_building
    expect(building.address).to eq '21 East 21st Street'
    building.address = 'Somewhere over the rainbow'
    expect(building.address).to eq 'Somewhere over the rainbow'
  end

  it 'has a changeable style' do
    building = new_building
    expect(building.style).to eq 'Art-Deco'
    building.style = 'Castle'
    expect(building.style).to eq 'Castle'
  end

  it 'has a changeable number of floors' do
    building = new_building
    expect(building.floors).to eq 8
    building.floors = 6
    expect(building.floors).to eq 6
  end

  it 'can describe itself' do
    building = new_building
    profile = "This building has 0 apartments."
    expect(building.to_s).to eq profile
  end

  it 'can store apartments' do
    building = new_building
    building.apartments["1F"] = "an apartment"
    expect(building.apartments["1F"]).to eq "an apartment"
  end

  it 'counts the number of apartments' do
    building = new_building
    building.apartments["x"] = Object.new
    building.apartments["y"] = Object.new
    expect(building.apartment_count).to eq 2
  end
end
