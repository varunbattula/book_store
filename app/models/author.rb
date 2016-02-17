class Author
  include Mongoid::Document

  has_many :books

  field :name, type: String
  field :email, type: String
end
