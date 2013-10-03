class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :critics, dependent: :destroy
  
  attr_accessible :content, :tag, :title

  validates :content, presence: true
  validates :tag, presence: true
  validates :title, presence: true

  validates :user_id, presence: true
  default_scope order: 'articles.created_at DESC'
  paginates_per 50

  searchable do
    text :title, :boost => 5
    text :content
  end
end
