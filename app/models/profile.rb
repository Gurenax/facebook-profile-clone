# == Schema Information
#
# Table name: profiles
#
#  id                    :integer          not null, primary key
#  user_id               :integer
#  first_name            :string
#  last_name             :string
#  location_city         :string
#  location_state        :string
#  location_country_code :string
#  hometown_city         :string
#  hometown_state        :string
#  hometown_country_code :string
#  job                   :string
#  company               :string
#  partner_first_name    :string
#  partner_last_name     :string
#  birthdate             :date
#  contact_no            :string
#  profile_image_data    :string
#  cover_image_data      :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Profile < ApplicationRecord
  include ImageUploader[:profile_image]
  include ImageUploader[:cover_image]
    
  belongs_to :user
  
  # User must unique
  validates :user, uniqueness: true
end
