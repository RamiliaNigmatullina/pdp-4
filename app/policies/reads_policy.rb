class ReadsPolicy < ApplicationPolicy
  def create?
    user.chats.include?(record)
  end
end
