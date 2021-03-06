class Town < ActiveRecord::Base
  attr_accessible :name

  belongs_to :municipality
  has_many :posts, dependent: :destroy

  validates :name, presence: true
  validates :municipality_id, presence: true

  default_scope order: 'towns.name ASC'
end
