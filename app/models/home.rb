class Home < ActiveRecord::Base

	attr_accessible :name, :email, :message, :avatar
    
	validates :name, :presence=> true, :length=>{:maximum=> 20, :minimum=>5}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, :presence=> true, :length=>{:maximum=>100}, :format=>{:with=>VALID_EMAIL_REGEX}, :uniqueness=>{:case_sensitive=> false}
	validates :message, :presence=> true, :length=>{:maximum=>200}
	

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
