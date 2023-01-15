require 'spec_helper'

describe DogsController do

  describe 'given a dog' do

    before :each do
      @summer = Dog.new
      @summer.name = "Summer"
      @summer.breed = "Schnauzer"
      @summer.save
    end

    describe 'GET index' do

      before :each do
        get :index
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end #responds successfully

      it 'assigns @dogs' do
        actual = assigns(:dogs)
        expected = [@summer]
        expect(actual).to eq(expected)
      end #assigns @dogs

    end #get index

    describe 'GET show' do

      before :each do
        get :show, :id => @summer.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end #responds successfully

      it 'assigns @person' do
        actual = assigns(:dog)
        expected = @summer
        expect(actual).to eq(expected)
      end #assigns @person

      it 'renders the show template' do
        expect(response).to render_template('show')
      end #renders show template

    end #get show

    describe 'GET edit' do

      before :each do
        get :edit, :id => @summer.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end #responds successfully

      it 'assigns @dog' do
        actual = assigns(:dog)
        expected = @summer
        expect(actual).to eq(expected)
      end #assigns @dog

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end #renders edit template

    end #get edit

    describe 'POST update' do

      before :each do
        post :update, {:id => @summer.id, :dog => {name: 'Winter'}}
      end

      it 'responds with a redirect' do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end #responds with a redirect

      it 'updates dog record' do
        @summer.reload
        actual = @summer.name
        expected = "Winter"
        expect(actual).to eq(expected)
      end #updates dog record

      it 'redirects to show' do
        response.should redirect_to dog_path(@summer)
      end #redirects to show

    end #post update

    describe 'DELETE destroy' do
      it 'destroys dog record' do
        expect {delete :destroy, {:id => @summer.id}}
        .to change(Dog, :count)
        .by(-1)
      end
    end #destroy

  end #given a dog

  describe 'GET new' do

    before :each do
      get :new
    end

    it 'responds successfully' do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)
    end #responds successfully

    it 'renders the new template' do
      expect(response).to render_template('new')
    end #renders new template

  end #describe get new

  describe 'POST create' do

    before :each do
      post :create, {:dog => {name: 'Summer', breed: 'Schnauzer'}}
    end

    it 'responds with a redirect' do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end #responds with redirect

    it 'inserts a dog record' do
      actual = Dog.last.name
      expected = "Summer"
      expect(actual).to eq(expected)
    end #inserts dog record

    it 'redirects to show' do
      response.should redirect_to dog_path(Dog.last)
    end #redirects to show

  end #post create

end #controller
