class Article < ApplicationRecord
  # Validating data that we send to models. 
  validates :title, presence: true, length: {minimum: 5}
end
