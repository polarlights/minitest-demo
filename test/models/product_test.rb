require 'minitest_helper'

describe Product do
  it "should have name in to_param" do
    @product = Product.new(name: 'Hello World')
    @product.to_param.must_equal "#{@product.id}.hello-world"
  end
end
