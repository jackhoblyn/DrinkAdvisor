class Pub < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
     validates :name, presence: true
	 
	   def self.search(search)
       where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
       end

  
end
