class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :email, :balance
end
