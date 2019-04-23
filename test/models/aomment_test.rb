# == Schema Information
#
# Table name: aomments
#
#  id         :integer          not null, primary key
#  body       :text
#  answer_id  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
