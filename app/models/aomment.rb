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

class Aomment < ApplicationRecord
  belongs_to :answer
  belongs_to :user
end
