class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :climb
end
