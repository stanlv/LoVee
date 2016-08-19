class Category < ActiveRecord::Base
  has_many :challenges

  after_create do |category|
    category.picture = "category_#{category.name.downcase}.png"
    category.save
  end
end
