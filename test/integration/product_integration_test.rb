require 'minitest_helper'

describe "Product integration" do
  it "should show product's name" do
    product = Product.create!(name: "Happy Time")
    visit product_path(product)
    page.text.must_include "Happy Time"
  end
end
