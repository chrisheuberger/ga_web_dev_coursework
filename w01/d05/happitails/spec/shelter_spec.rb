require 'spec_helper'

describe Shelter do

  before :each do
    @shelter = Shelter.new('HappiTails', '10 East 21st Street')
  end

  describe "#new" do
    it "takes two parameters and returns a Shelter object" do
      expect(@shelter).to be_an_instance_of(Shelter)
    end
  end

  it 'has a changeable name' do
    expect(@shelter.name).to eq 'HappiTails'
    @shelter.name = 'SuprHappiTails'
    expect(@shelter.name).to eq 'SuprHappiTails'
  end


  it 'can store clients' do
    @shelter.clients['Lichard'] = "a client"
    expect(@shelter.clients['Lichard']).to eq "a client"
  end

  it 'counts the number of clients' do
    @shelter.clients["Willip"] = Object.new
    @shelter.clients["Pamuel"] = Object.new
    @shelter.clients["Vermouth"] = Object.new
    expect(@shelter.client_count).to eq 3
  end

  it 'can store animals' do
    @shelter.animals['Sally'] = "an animal"
    expect(@shelter.animals['Sally']).to eq "an animal"
  end

  it 'counts the number of animals' do
    @shelter.animals["Gudy"] = Object.new
    @shelter.animals["Werry"] = Object.new
    expect(@shelter.animal_count).to eq 2
  end

  it 'displays all animals' do
    @shelter.animals["bobert"] = Object.new
    @shelter.animals["lopid"] = Object.new
    STDOUT.should_receive(:puts).with("bobert")
    STDOUT.should_receive(:puts).with("lopid")
    @shelter.display_animals
  end

  it 'displays all clients' do
    @shelter.clients["nohna"] = Object.new
    @shelter.clients["wina"] = Object.new
    STDOUT.should_receive(:puts).with("nohna")
    STDOUT.should_receive(:puts).with("wina")
    @shelter.display_clients
  end

  it 'gives away animal' do
    rou_animal = Object.new
    @shelter.animals["Rou"] = rou_animal
    expect(@shelter.animals["Rou"]).to eq rou_animal
    expect(@shelter.give_away_animal("Rou")).to eq rou_animal
    expect(@shelter.animals["Rou"]).to eq nil
  end

  it 'accepts an animal' do
    dof_animal = Object.new
    @shelter.accept_animal('Dof', dof_animal)
    expect(@shelter.animals['Dof']).to eq dof_animal
  end

  it 'accepts a client' do
    andre_client = Object.new
    @shelter.accept_client('Andre', andre_client)
    expect(@shelter.clients['Andre']).to eq andre_client
  end

  it 'can describe itself' do
    expect(@shelter.to_s).to eq "HappiTails shelter at 10 East 21st Street has 0 animals and 0 people"
  end

end
