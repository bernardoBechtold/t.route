class City < ActiveRecord::Base
	belongs_to :country
	has_many :tos
	has_many :tickets, :through => :to
	has_many :froms
	has_many :tickets, :through => :from

	validates :name, presence: true, length:{maximum: 50, minimum: 2}
	validates :latitude, presence: true
	validates :latitude, :format => { :with => /\A(\+|\-)*\d{1,2}\.\d{1,6}\Z/i }, 
	:numericality => {:greater_than => -86.999999, :less_than => 85.000001}
	validates :longitude, :format => { :with => /\A(\+|\-)*\d{1,3}\.\d{1,6}\Z/i }, 
	:numericality => {:greater_than => -181.999999, :less_than => 180.000001}



	

end
