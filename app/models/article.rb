class Article < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_protected
  belongs_to :category
  scope :recent,order('created_at desc')
  validates_presence_of :category_id,:title,:content
end
