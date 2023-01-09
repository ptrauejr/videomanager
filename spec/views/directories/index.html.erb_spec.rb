require 'rails_helper'

RSpec.describe "directories/index", type: :view do
  before(:each) do
    assign(:directories, [
      Directory.create!(
        name: "Name",
        path: "Path"
      ),
      Directory.create!(
        name: "Name",
        path: "Path"
      )
    ])
  end

  it "renders a list of directories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Path".to_s), count: 2
  end
end
