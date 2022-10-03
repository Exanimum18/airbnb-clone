# == Schema Information
#
# Table name: bookings
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  plan_id    :bigint           not null
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :plan
end
