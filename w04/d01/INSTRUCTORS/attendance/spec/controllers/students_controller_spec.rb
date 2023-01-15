require 'spec_helper'

describe StudentsController do
  describe '#index' do
    it 'has a list of students' do
      s1, s2 = Student.create(name: 'Lichard'), Student.create(name: 'Bod')
      get :index
      expect(assigns(:students)).to match_array [s1, s2]
    end
  end

  describe '#show' do
    it 'has a student' do
      s1 = Student.create name: 'Lichard'
      get :show, id: s1.id
      expect(assigns(:student)).to eq s1
    end
    #TODO write a test to verify we have check_ins
  end

end
