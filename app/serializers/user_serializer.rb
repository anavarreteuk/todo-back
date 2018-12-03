class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :firstname, :lastname, :city, :country, :is_active, :tasks
  has_many :tasks
end
