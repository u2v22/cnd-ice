class Favorite < ApplicationRecord
  belongs_to :climb, optional: true
  belongs_to :user, optional: true
end
