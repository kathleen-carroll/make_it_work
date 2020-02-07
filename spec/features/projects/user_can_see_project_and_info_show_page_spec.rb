require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I visit a projects show page" do
    it "can see project name, material, and theme" do
      water_challenge = Challenge.create(theme: "Waterproof Fashion", project_budget: 2000)
      project1 = water_challenge.projects.create(name: "Diver Diva",  material: "Wetsuits")
      project2 = water_challenge.projects.create(name: "Beach Chic",  material: "Terrycloth")

      visit "projects/#{project1.id}"

      expect(page).to have_content(project1.name)
      expect(page).to have_content("Challenge Theme: #{project1.challenge.theme}")
      expect(page).to have_content("Material: #{project1.material}")
      expect(page).to_not have_content(project2.name)
    end
  end
end
