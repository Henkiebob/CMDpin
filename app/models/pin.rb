class Pin < ActiveRecord::Base

	belongs_to :user

	#validates url with gem
	validates :link, presence: true

	has_and_belongs_to_many :minors, :dependent => :destroy
	has_and_belongs_to_many :competences, :dependent => :destroy

	accepts_nested_attributes_for :minors
	accepts_nested_attributes_for :competences

	#mount_uploader :image, PinImageUploader
end
