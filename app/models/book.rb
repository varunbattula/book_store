class Book
  include Mongoid::Document

  belongs_to :user
  belongs_to :author
  
  field :name, type: String
  field :title, type: String
  field :edition, type: String
end
