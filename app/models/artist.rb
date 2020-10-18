class Artist < ActiveRecord::Base
  has_many :songs

  def self.find_author_by_name()
     
  end
end
