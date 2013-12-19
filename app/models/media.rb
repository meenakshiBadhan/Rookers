# == Schema Information
#
# Table name: media
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  rating      :integer
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Media < ActiveRecord::Base
  attr_accessible :category_id, :description, :rating, :title, :user_id
  belongs_to :category
  belongs_to :user
  has_many :reviews
end
