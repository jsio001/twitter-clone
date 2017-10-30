class Relation < ApplicationRecord
  belongs_to :subscriber, class_name: "User"
  belongs_to :poster, class_name: "User"
end
