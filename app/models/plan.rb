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
class Plan < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model

  pg_search_scope :search_by_name_and_description_and_location,
    against: [ :name, :description, :location ],
    using: {
      tsearch: { prefix: true }
    }

end
