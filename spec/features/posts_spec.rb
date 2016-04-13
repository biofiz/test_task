require 'rails_helper'

describe "Posts" do
    it "should display posts" do
      post = create :post
      visit root_path
      expect(page).to have_content('Последние посты с habrahabr.ru')
      expect(page).to have_link(post.title, href: post.link)
    end

end