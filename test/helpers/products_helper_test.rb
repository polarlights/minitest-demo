require 'minitest_helper'

describe ProductsHelper do
  it "converts number to currency" do
    number_to_currency(5.01).must_equal "$5.01"
  end
end
