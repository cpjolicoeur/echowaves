class Conversation < ActiveRecord::Base
  validates_presence_of :name

  validates_uniqueness_of   :name

  validates_length_of       :name,    :within => 8..100
  
  has_many :messages

end
  