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

require 'spec_helper'

describe Media do
  pending "add some examples to (or delete) #{__FILE__}"
end
