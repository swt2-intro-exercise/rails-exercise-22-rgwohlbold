require 'rails_helper'

describe "Edit author page" do
  it 'should exist at "edit_author_path" and render without error' do
    author = FactoryBot.create :author
    visit edit_author_path(author)
  end
end
