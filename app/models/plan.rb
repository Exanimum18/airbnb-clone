# == Schema Information
#
# Table name: plans
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Plan < ApplicationRecord
  belongs_to :user
end
