class Project <ApplicationRecord
  validates_presence_of :name, :material
  belongs_to :challenge
  
  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects
end
