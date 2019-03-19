require 'rails_helper'

feature 'item', type: :feature do
  let(:item) { create(:item) }

  scenario 'search item' do
    # ログイン前には投稿ボタンがない
    search_word = Faker::Name.name
    fill_in 'keyword', with: search_word
    expect(page).to have_no_content('検索ボタン')
  end
end