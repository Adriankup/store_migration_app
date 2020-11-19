# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SalesController, type: :controller do
  describe 'GET index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET new' do
    it 'returns a successful response' do
      get :new
      expect(response).to be_successful
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template('new')
    end
  end

  describe 'POST create' do
    it 'should create a sale' do
      file = fixture_file_upload(Rails.root.join('spec/fixtures/files/example.tab.tsv'))
      post :create, params: { sale: { file: file } }
      expect(flash[:notice]).to eq 'La venta ha sido creada exitosamente'
    end
  end

  describe 'GET show' do
    let!(:sale) { create(:sale) }

    it 'should show a sale' do
      get :show, params: { id: sale.id }
      expect(response).to render_template('show')
    end
  end

  describe 'DELETE destroy' do
    let!(:sale) { create(:sale) }
    it 'should destroy a sale' do
      delete :destroy, params: { id: sale.id }
      expect(flash[:notice]).to eq 'La venta ha sido eliminada exitosamente'
    end
  end
end
