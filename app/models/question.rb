class Question < ApplicationRecord
  extend FriendlyId
  friendly_id :titre, use: :slugged
  belongs_to :user
  has_many :commentaires
  belongs_to :categorie
end
