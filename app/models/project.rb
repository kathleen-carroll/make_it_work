class Project <ApplicationRecord
  validates_presence_of :name, :material
  belongs_to :challenge

  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects

  def average_experience
    # require "pry"; binding.pry
    # project = Project.find(params[:id])
    count = contestants.length
    sum = contestants.sum { |contestant| contestant.years_of_experience}
    (sum/count.to_f).round(3) if count != 0
  end
end
