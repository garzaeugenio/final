class Project < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :category

  validates :project_name, presence: true
  validates :description, presence: true
  validates :category_name, presence: true
  validates :name, presence: true
end