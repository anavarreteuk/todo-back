class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :is_active, :tasks
  has_many :tasks
end
