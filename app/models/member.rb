# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  phone           :string(255)
#  major           :string(255)
#  fees_paid       :boolean
#  campus_resident :boolean
#  volunteer       :boolean
#  referrer        :string(255)
#  recruiter_id    :integer
#  interests       :text
#  position_id     :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Member < ActiveRecord::Base
end
