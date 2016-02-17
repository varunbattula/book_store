require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :name => "Name",
        :title => "Title",
        :edition => "Edition"
      ),
      Book.create!(
        :name => "Name",
        :title => "Title",
        :edition => "Edition"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Edition".to_s, :count => 2
  end
end
