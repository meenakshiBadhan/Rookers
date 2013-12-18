class Reviews < ActiveRecord::Base
  attr_accessible :comment_id, :content, :media_id, :title, :user_id
  belongs_to :media
end
