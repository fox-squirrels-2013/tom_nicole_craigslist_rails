require 'friendly_id'

class Posting < ActiveRecord::Base
  attr_accessible :title, :body, :category_id
  belongs_to :category
  friendly_id :hashed_urls, use: :slugged

  def hashed_urls
    Digest::SHA1.hexdigest self.title
  end
end
