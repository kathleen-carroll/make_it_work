# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


recycled_material_challenge = Challenge.create(theme: "Recycled Material", project_budget: 1000)
furniture_challenge = Challenge.create(theme: "Apartment Furnishings", project_budget: 1000)

recycled_material_challenge.projects.create(name: "News Chic", material: "Newspaper")
recycled_material_challenge.projects.create(name: "Boardfit", material: "Cardboard Boxes")

furniture_challenge.projects.create(name: "Upholstery Tuxedo", material: "Couch")
furniture_challenge.projects.create(name: "Litfit", material: "Lamp")


contestant1 = Contestant.create(name: "Jenny McQueen",
                                age: 37,
                                hometown: "Brooklyn, NY",
                                years_of_experience: 20)

contestant2 = Contestant.create(name: "Sebastian Solomon",
                                age: 28,
                                hometown: "Demoines, Iowa",
                                years_of_experience: 13)

contestant3 = Contestant.create(name: "Christian DeArrollo",
                                age: 60,
                                hometown: "Antigua, Guatemala",
                                years_of_experience: 35)

contestant4 = Contestant.create(name: "LilyRose Grant",
                                age: 21,
                                hometown: "San Francisco",
                                years_of_experience: 2)

water_challenge = Challenge.create(theme: "Waterproof Fashion", project_budget: 2000)
project1 = water_challenge.projects.create(name: "Diver Diva",  material: "Wetsuits")
project2 = water_challenge.projects.create(name: "Beach Chic",  material: "Terrycloth")

flower_challenge = Challenge.create(theme: "Flower Power", project_budget: 700)
flower_project1 = flower_challenge.projects.create(name: "Green with Envy", material: "Ivy and palm leaves")
flower_project2 = flower_challenge.projects.create(name: "Roses are red, Violets are blue", material: "Rose and violet petals")

masterpiece_challenge = Challenge.create(theme: "Masterpiece: Famous Painting or Sculpture", project_budget: 1000)
masterpiece_project1 = masterpiece_challenge.projects.create(name: "Venus De Milo", material: "silk and chiffon")
masterpiece_project2 = masterpiece_challenge.projects.create(name: "Monet Waterlillies", material: "silk and paint")

contestant1.projects << masterpiece_project1
contestant1.projects << project1
contestant2.projects << masterpiece_project2
contestant2.projects << flower_project1
contestant3.projects << flower_project2
contestant4.projects << project2
