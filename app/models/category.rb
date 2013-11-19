require 'friendly_id'

class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :posts
end
