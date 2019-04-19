module Comment
  class Comment < ActiveRecord::Base
  	validates_presence_of :post_id ,:body
  	belongs_to :post, class_name: "Posts::Post"
  end
end