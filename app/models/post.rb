class Post < ActiveRecord::Base
  validates :title, presence: true, length: { in: 5..100 }
  validates :body, presence: true
end
