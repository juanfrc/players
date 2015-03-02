class Player < ActiveRecord::Base
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :name, presence: true
	validates :username, uniqueness: true, length: { in: 5..20}
	validates_numericality_of :points, only_integer: true, greater_than_or_equal_to: 0  
	validates :active, inclusion: { in: [true, false] }
end


