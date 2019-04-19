module Posts
  class Post < ActiveRecord::Base
  	validates_presence_of :body , :title
  	has_many :comments, class_name: "Comment::Comment"
  end
end
