class Tour < ApplicationRecord
  validates :name, presence: true, lenght:{minimum: 10,maximum: 50}
  validates :description, presence: true, lenght:{minimum: 15,maximum: 200}
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :cover, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)$}i,
      message: 'must be a URL for GIF, DPG or PNG image.'
  # URL должен указывать на изображение формата GIF, UPG или PNG
  }

end
