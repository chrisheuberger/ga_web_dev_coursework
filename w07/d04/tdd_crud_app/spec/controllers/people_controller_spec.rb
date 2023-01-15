require 'spec_helper'

describe PeopleController do

  describe 'given a person' do
    before :each do
      @jon = Person.new()
      @jon.name = 'Jon'
      @jon.save
    end


    # --- INDEX ---
    describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @people' do
        actual = assigns(:people)
        expected = [@jon]
        expect(actual).to eq(expected)
      end

    end # GET index


    # --- SHOW ---
    describe 'GET show' do
      before :each do
        get :show, :id => @jon.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @jon
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end # GET show


    # --- EDIT ---
    describe 'GET edit' do
      before :each do
        get :edit, :id => @jon.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @jon
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit

    # --- UPDATE ---
    describe 'POST update' do

      before :each do
        post :update, {:id => @jon.id, :person => {name: 'jonathan'}}
      end

      it "response with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates person record' do
        @jon.reload
        actual = @jon.name
        expected = 'jonathan'
        expect(actual).to eq(expected)
      end

      it "redirects to show" do
        response.should redirect_to person_path(@jon)
      end

    end # POST update

    describe 'DELETE destroy' do
     it "destory person record" do
        expect { delete :destroy, {:id => @jon.id} }
          .to change(Person, :count).by(-1)
      end
    end

  end # given a person




  # --- NEW ---
  describe 'GET new' do
    before :each do
      get :new
    end

    it 'responds successfully' do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)
    end

    it 'renders the new template' do
      expect(response).to render_template('new')
    end

  end # GET edit

  # --- CREATE ---
  describe 'POST create' do
    before :each do
      post :create, {:person => {name: 'Eric', weather: 'Overcast'}}
    end

    it "response with a redirect" do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it "inserts a person record" do
      actual = Person.last.name
      expected = 'Eric'
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to person_path(Person.last)
    end

  end

end # PeopleController

