class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         	:recoverable, :rememberable, :trackable, :validatable

         	has_many :stores, dependent: :destroy
         	
         	has_one :profile, dependent: :destroy
         	accepts_nested_attributes_for :profile, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
