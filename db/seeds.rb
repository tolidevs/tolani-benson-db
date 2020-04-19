# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tags = Tag.create([{name: "Blog"},{name: "Project"},{name: "Game"},{name: "Front-end"},{name: "Back-end"},{name: "Ruby"},{name: "Ruby-on-Rails"},{name: "JavaScript"},{name: "React"},{name: "Redux"},{name: "API"},{name: "REST"},{name: "CV"},{name: "Resume"}])

technologies = Technology.create([{name: "Ruby"},{name: "Ruby-on-Rails"},{name: "JavaScript"},{name: "React"},{name: "Redux"}])