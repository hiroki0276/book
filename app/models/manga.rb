class Manga < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  default_scope -> { order(updated_at: :desc) }

  def self.search(search)
    if search
      Manga.where('title LIKE(?)', "%#{search}%").or Manga.where('author LIKE(?)', "%#{search}%")
    else
      Manga.all
    end
  end
end
