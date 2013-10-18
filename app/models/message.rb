class Message < ActiveRecord::Base

  # Associations
  belongs_to :user

  # Validations
  validates :content, presence: true, allow_blank: false
  validates :user_id, presence: true

  # Scope
  default_scope {order(created_at: :desc)}

  # Public methods

  def from?(user)
    self.user == user
  end


end
