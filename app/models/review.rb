# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  media_id   :integer
#  user_id    :integer
#  comment_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  attr_accessible :comment_id, :content, :media_id, :title, :user_id
  belongs_to :media
  belongs_to :user
end
