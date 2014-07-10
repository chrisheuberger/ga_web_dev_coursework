require 'spec_helper'

describe HumansController do

  describe 'given a human' do
    before :each do
      @snad = Human.new()
      @snad.name = 'Snad'
      @snad.save
    end

    describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @humans' do
        actual = assigns(:humans)
        expected = [@snad]
        expect(actual).to eq(expected)
      end

    end # GET index

    describe 'GET show' do
      before :each do
        get :show, :id => @snad.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @human' do
        actual = assigns(:human)
        expected = @snad
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end # GET show

    describe 'GET edit' do
      before :each do
        get :edit, :id => @snad.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @human' do
        actual = assigns(:human)
        expected = @snad
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit

    describe 'POST update' do

      before :each do
        post :update, {:id => @snad.id, :human => {name: 'notsnad'}}
      end

      it "response with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates human record' do
        @snad.reload
        actual = @snad.name
        expected = 'notsnad'
        expect(actual).to eq(expected)
      end

      it "redirects to show" do
        response.should redirect_to human_path(@snad)
      end

    end # POST update

    describe 'DELETE destroy' do
     it "destory human record" do
        expect { delete :destroy, {:id => @snad.id} }
          .to change(Human, :count).by(-1)
      end
    end

  end # given a human

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

  describe 'POST create' do
    before :each do
      post :create, {:human => {name: 'Wonk Dorp', email: 'wonk@dorpmail.com'}}
    end

    it "response with a redirect" do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it "inserts a human record" do
      actual = Human.last.name
      expected = 'Wonk Dorp'
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to human_path(Human.last)
    end

  end

end # HumanController
