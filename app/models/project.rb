class Project < ApplicationRecord
  validates_presence_of :name, :material
  belongs_to :challenge
  has_many :contestant_projects, dependent: :destroy
  has_many :contestants, through: :contestant_projects
end
