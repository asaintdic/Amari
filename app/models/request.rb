class Request < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :gender, :age, :clothing_size, :shoe_size, :add_info
end
