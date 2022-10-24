describe "Author" do
  it "should have attribute name" do
    author = Author.new
    author.first_name = "Alan"
    author.last_name = "Turing"
    expect(author.name).to eq("Alan Turing")
  end

  it "should not validate without last name" do
    author = Author.new
    author.first_name = "Alan"
    author.homepage = "http://wikipedia.de/Alan_Turing"
    expect(author).to_not be_valid
  end
end
