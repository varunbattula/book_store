class Book
  include Mongoid::Document
  field :name, type: String
  field :title, type: String
  field :edition, type: String
end
