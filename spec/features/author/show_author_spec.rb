require 'rails_helper'

describe "Show author page" do
    it "should exist at 'author_path'" do
        author = FactoryBot.create :author
        visit author_path(author)
        expect(page).to have_text(author.name)
        expect(page).to have_text(author.homepage)
    end
end
