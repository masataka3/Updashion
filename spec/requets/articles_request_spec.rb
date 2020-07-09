# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'Articles', type: :request do
  describe '新規投稿ページ' do
    context '新規投稿ページが正しく表示される' do
      before do
        get articles_new_path
      end

      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
  describe '記事編集ページ' do
    context '記事編集ページが正しく表示される' do
      before do
        get article_edit_path
      end

        it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
end
