class Company < ApplicationRecord
  belongs_to :user


  validates :name, :url, presence: true
end
