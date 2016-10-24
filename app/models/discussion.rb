class Discussion < ActiveRecord::Base
   validates :topic,  presence: true
   belongs_to :user, foreign_key: :user_id
   
   def ownerornot?(user)
      user && user.id == user_id
   end
end
