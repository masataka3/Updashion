require 'rails_helper'

describe 'ヘッダーのテスト' do
  describe 'ログインしていない場合' do
    before do
      visit root_path
    end

    context 'ヘッダーの表示を確認' do
      subject { page }

      it 'タイトルが表示される' do
        is_expected.to have_content 'Updashion'
      end
      it 'Homeリンクが表示される' do
        home_link = find_all('a')[0].native.inner_text
        expect(home_link).to match(/home/i)
        # is_expected.to have_content 'Home'
      end
      it 'Aboutリンクが表示される' do
        about_link = find_all('a')[1].native.inner_text
        expect(about_link).to match(/about/i)
        # is_expected.to have_content 'About'
      end
      it 'Sign upリンクが表示される' do
        signup_link = find_all('a')[2].native.inner_text
        expect(signup_link).to match(/sign up/i)
        # is_expected.to have_content 'Sign up'
      end
      it 'loginリンクが表示される' do
        login_link = find_all('a')[3].native.inner_text
        expect(login_link).to match(/login/i)
        # is_expected.to have_content 'login'
      end
    end

    describe 'ログインしている場合' do
      let(:user) { create(:user) }

      before do
        visit new_user_session_path
        fill_in 'user[name]', with: user.name
        fill_in 'user[password]', with: user.password
        click_button 'Log in'
      end

      context 'ヘッダーの表示を確認' do
        subject { page }

        it 'タイトルが表示される' do
          is_expected.to have_content 'Updashion'
        end
        it 'Homeリンクが表示される' do
          home_link = find_all('a')[0].native.inner_text
          expect(user_link).to match(/user/i)
        end
        it 'Articlesリンクが表示される' do
          articles_link = find_all('a')[0].native.inner_text
          expect(articles_link).to match(/article/i)
        end
        it 'Article/newリンクが表示される' do
          article_new_link = find_all('a')[1].native.inner_text
          expect(article_new_link).to match(/article/i)
        end
        it 'Historyリンクが表示される' do
          history_link = find_all('a')[2].native.inner_text
          expect(history_link).to match(/histories/i)
        end
        it 'textileリンクが表示される' do
          textiles_link = find_all('a')[2].native.inner_text
          expect(textiles_link).to match(/textiles/i)
        end
        it 'textileリンクが表示される' do
          textiles_link = find_all('a')[2].native.inner_text
          expect(textiles_link).to match(/textiles/i)
        end
        it 'textileリンクが表示される' do
          textiles_link = find_all('a')[2].native.inner_text
          expect(textiles_link).to match(/textiles/i)
        end
        it 'logoutリンクが表示される' do
          logout_link = find_all('a')[3].native.inner_text
          expect(logout_link).to match(/logout/i)
        end
      end
    end
  end
end
