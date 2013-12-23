class Entry < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true

	belongs_to :category
end
