class Snack < ApplicationRecord
  validates :name, presence: true
  #:location, presence: true #confirm if location validated here

  # has_many :locations

  #logic here from the "Bored? Games!" User model
  def votes
    v = []
    Vote.where(snack: self).each do |vote|
      v << vote
    end
    v.count
  end

  has_many :users, :through => :votes

end
