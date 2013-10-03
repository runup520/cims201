class Comment < ActiveRecord::Base
  belongs_to :article
  attr_accessible :content, :email, :name
  default_scope order: 'comments.created_at DESC'
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX }

  validates :name, presence: true
  validates :content, presence: true
end
