class Discussion < ActiveRecord::Base
   validates :topic,  presence: true
end
