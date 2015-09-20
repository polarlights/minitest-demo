class Product < ActiveRecord::Base
  def to_param
    "#{self.id}.#{name.parameterize}"
  end
end
