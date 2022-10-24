describe "Author" do
  it "should have attribute name" do
    author = Author.new
    author.first_name = "Alan"
    author.last_name = "Turing"
    expect(author.name).to eq("Alan Turing")
  end
end
