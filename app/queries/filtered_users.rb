class FilteredUsers
  ALLOWED_PARAMS = %i[without_chat archived].freeze

  def initialize(relation, filter_params = {}, options = {})
    @relation = relation
    @filter_params = filter_params
    @options = options
  end

  def all
    filter_params.slice(*ALLOWED_PARAMS).reduce(relation) do |relation, (key, value)|
      next relation if value.nil?

      send("by_#{key}", relation, value)
    end
  end

  private

  attr_reader :relation, :filter_params, :options

  def by_archived(relation, archived)
    archived = ActiveModel::Type::Boolean.new.cast(archived)

    archived ? relation.only_deleted : relation.without_deleted
  end

  def by_without_chat(relation, without_chat)
    without_chat = ActiveModel::Type::Boolean.new.cast(without_chat)

    without_chat ? relation.where.not(id: user_ids) : relation.where(id: user_ids)
  end

  def user_ids
    user_ids = chats.map { |chat| chat.interlocutor(user).id }
    user_ids << user.id
  end

  def chats
    Chat.where(id: user.chats.ids)
  end

  def user
    @user ||= options[:user]
  end
end
