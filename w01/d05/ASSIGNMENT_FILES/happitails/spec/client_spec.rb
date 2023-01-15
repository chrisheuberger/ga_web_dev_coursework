require 'spec_helper'

describe Client do

  before :each do
    @client = Client.new('Beth', 30)
  end

  describe "#new" do
    it "takes two parameters and returns a client object" do
      expect(@client).to be_an_instance_of(Client)
    end
  end

  it 'has a changeable name' do
    expect(@client.name).to eq 'Beth'
    @client.name = 'Feth'
    expect(@client.name).to eq 'Feth'
  end

  it 'has a changeable age' do
    expect(@client.age).to eq 30
    @client.age = 31
    expect(@client.age).to eq 31
  end

  it "is instantiated with an empty pet hash" do
    expect(@client.pets.length).to eq 0
  end

  it "can describe itself" do
    expect(@client.to_s).to eql("Beth is a 30 year old with 0 pets")
  end

  it 'counts the number of pets' do
    @client.pets["Rou"] = Object.new
    @client.pets["Dof"] = Object.new
    expect(@client.pet_count).to eq 2
  end

  it 'displays all pets' do
    @client.pets["bert"] = Object.new
    @client.pets["solly"] = Object.new
    STDOUT.should_receive(:puts).with("bert")
    STDOUT.should_receive(:puts).with("solly")
    @client.display_pets
  end

  it 'gives away pet' do
    rou_pet = Object.new
    @client.pets["Rou"] = rou_pet
    expect(@client.pets["Rou"]).to eq rou_pet
    expect(@client.give_away_pet("Rou")).to eq rou_pet
    expect(@client.pets["Rou"]).to eq nil
  end

  it 'accepts a pet' do
    dof_pet = Object.new
    @client.accept_pet('Dof', dof_pet)
    expect(@client.pets['Dof']).to eq dof_pet
  end


end
