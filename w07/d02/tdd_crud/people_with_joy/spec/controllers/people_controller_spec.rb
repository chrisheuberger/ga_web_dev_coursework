require 'spec_helper'

describe PeopleController do
  describe 'given a person' do

    before :each do
      @andre = Person.new
      @andre.name = "Andre"
      @andre.save
    end

    describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
        expect(response.code).to eq('200')
      end

      it 'assigns @people' do
        actual = assigns(:people)
        expected = [@andre]
        expect(actual).to eq(expected)
      end

    end # Get Index

    describe 'GET show' do
      before :each do
        get :show, :id=>@andre.id
      end

      it 'responds successfully' do
        expect(response.code).to eq('200')
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @andre
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end
    end # GET show

    describe 'GET edit' do
      before :each do
        get :edit, :id=>@andre.id
      end

      it 'responds successfully' do
        expect(response.code).to eq('200')
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @andre
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end
    end # GET edit

    describe 'POST update' do

      before :each do
        post :update, {:id => @andre.id, :person => {name: "Nondre"}}
      end

      it 'responds with a redirect' do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates person record' do
        @andre.reload
        actual = @andre.name
        expected = "Nondre"
        expect(actual).to eq(expected)
      end

      it 'redirects to show' do
        response.should redirect_to person_path(@andre)
      end

    end # POST update

describe 'DELETE destroy' do
  it 'destroy person record' do
    expect { delete :destroy, {:id => @andre.id} }
      .to change(Person, :count).by(-1)
    end
  end

  end # Given a person

    describe 'GET new' do
      before :each do
        get :new
      end

      it 'responds successfully' do
        expect(response.code).to eq('200')
      end

      it 'renders the new template' do
        expect(response).to render_template('new')
      end
    end # GET edit

  describe 'POST create' do
    before :each do
      post :create, {:person => {name: 'Kathew Lamp', email: 'klool@tmail.com'}}
    end

    it 'responds with a redirect' do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it 'inserts a person record' do
      actual = Person.last.name
      expected = 'Kathew Lamp'
      expect(actual).to eq(expected)
    end

    it 'redirects to show' do
      response.should redirect_to person_path(Person.last)
    end

  end

end # PeopleController
