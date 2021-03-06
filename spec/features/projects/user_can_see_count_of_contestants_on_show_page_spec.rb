require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I visit a projects show page" do
    it "can see a count of contestants" do
      water_challenge = Challenge.create(theme: "Waterproof Fashion", project_budget: 2000)
      project1 = water_challenge.projects.create(name: "Diver Diva",  material: "Wetsuits")
      project2 = water_challenge.projects.create(name: "Beach Chic",  material: "Terrycloth")
      contestant1 = Contestant.create(name: "Jenny McQueen",
                                      age: 37,
                                      hometown: "Brooklyn, NY",
                                      years_of_experience: 20)

      contestant2 = Contestant.create(name: "Sebastian Solomon",
                                      age: 28,
                                      hometown: "Demoines, Iowa",
                                      years_of_experience: 13)
      contestant1.projects << project1
      contestant2.projects << project1

      visit "projects/#{project1.id}"

      expect(page).to have_content(project1.name)
      expect(page).to have_content("Challenge Theme: #{project1.challenge.theme}")
      expect(page).to have_content("Material: #{project1.material}")
      expect(page).to have_content("Number of Contestants: 2")

      # contestant2.projects << project1
      # expect(page).to have_content("Number of Contestants: 2")
    end
  end
end
