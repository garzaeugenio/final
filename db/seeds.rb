# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Category.delete_all
User.delete_all
Project.delete_all


# Create the categories
puts "Creating categories..."
urban = Category.create(category_name: "Urbanism", category_description: "Things related to urbanism")
tech = Category.create(category_name: "Technology", category_description: "Things related to technology")
entre = Category.create(category_name: "Entrepreneurship", category_description: "Things related to entrepreneurship")
edu = Category.create(category_name: "Education", category_description: "Things related to education")
safe = Category.create(category_name: "Safety", category_description: "Things related to safety")
traffic = Category.create(category_name: "Traffic", category_description: "Things related to traffic")

# Create the users
puts "Creating users..."
garzaeugenio = User.create(email: "garzaeugenio@gmail.com", password: "1234", name: "Eugenio", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL",)
garzaartemio = User.create(email: "garzaartemio@me.com", password: "1234", name: "Artemio", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL")
mila = User.create(email: "milarca@icloud.com", password: "1234", name: "Milarca", last_name: "Fernandez", gender: "female", city: "San Pedro Garza Garcia", state: "NL")
agarza = User.create(email: "alfonsogarza@gmail.com", password: "1234", name: "Alfonso", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL")
andresgarza = User.create(email: "andresgarza@gmail.com", password: "1234", name: "Andres", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL")

# Create the projects
puts "Creating projects..."
signs = Project.create(project_name: "No More Signs", description: "Eliminate large billboards in the city", category_id: urban.id, user_id: garzaeugenio.id)
app = Project.create(project_name: "Citywide App", description: "Create a citywide app to improve services", category_id: tech.id, user_id: garzaartemio.id)
fund = Project.create(project_name: "Startup Funding", description: "Create resources to provide more startup funding", category_id: entre.id, user_id: mila.id)
school = Project.create(project_name: "More School Funding", description: "Increase Funding for Schools", category_id: edu.id, user_id: agarza.id)
police = Project.create(project_name: "More Policing", description: "Increase Policing", category_id: safe.id, user_id: andresgarza.id)
light = Project.create(project_name: "More Traffic Lights", description: "Introduce more traffic lights", category_id: traffic.id, user_id: garzaeugenio.id)

puts "There are now #{Project.count} projects, #{User.count} users, and #{Category.count} categories in the database."



