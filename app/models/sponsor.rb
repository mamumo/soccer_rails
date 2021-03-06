class Sponsor < ActiveRecord::Base
  has_many :sponsorships
  has_many :players, through: :sponsorships, source: :player
end
