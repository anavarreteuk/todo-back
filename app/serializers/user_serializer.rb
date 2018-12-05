class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :firstname, :lastname, :city, :country, :is_active, :tasks, :password_digest
  has_many :tasks
end
