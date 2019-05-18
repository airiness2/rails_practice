class Contact < ApplicationRecord
       validates :name,  presence: true, length: { maximum: 140 } 
       validates :email,  presence: true, length: { maximum: 140 } 
       validates :content,  presence: true, length: { maximum: 140 } 
end
