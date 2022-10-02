# == Schema Information
#
# Table name: plans
#
#  id            :bigint           not null, primary key
#  name          :string
#  description   :text
#  user_id       :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  location      :string
#  category      :string
#  intensity     :string
#  starting_time :datetime
#  finish_time   :datetime
#
require "test_helper"

class PlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
