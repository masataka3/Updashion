require 'rails_helper'

RSpec.describe 'Articleモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { create(:user) }
    let!(:article) { build(:article, user_id: user.id) }

    context 'titleカラム' do
      it '空欄でないこと' do
        article.title = ''
        expect(book.valid?).to eq false
      end
    end

    context 'bodyカラム' do
      it '空欄でないこと' do
        book.body = ''
        expect(book.valid?).to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Article.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end
end
