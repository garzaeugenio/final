# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
User.delete_all
Project.delete_all
Category.delete_all

# Create the users
puts "Creating users..."
garzaeugenio = User.create(email: "garzaeugenio@gmail.com", password: "1234", name: "Eugenio", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL")
garzaartemio = User.create(email: "garzaartemio@me.com", password: "1234", name: "Artemio", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL")
mila = User.create(email: "milarca@icloud.com", password: "1234", name: "Milarca", last_name: "Fernandez", gender: "female", city: "San Pedro Garza Garcia", state: "NL")
agarza = User.create(email: "alfonsogarza@gmail.com", password: "1234", name: "Alfonso", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL")
andresgarza = User.create(email: "andresgarza@gmail.com", password: "1234", name: "Andres", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL")

# Create the projects
puts "Creating projects..."
cables = Project.create(project_name: "No More Cables", description: "Eliminate telephone cables in the city")
signs = Project.create(project_name: "No More Signs", description: "Eliminate large billboards in the city")
app = Project.create(project_name: "Citywide App", description: "Create a citywide app to improve services")
funding = Project.create(project_name: "Startup Funding", description: "Create resources to provide more startup funding")
urbanplan = Project.create(project_name: "Improving Urban Development", description: "Create a new urban plan")

# Create the categories
puts "Creating categories..."
urban = Category.create(category_name: "Urbanism", category_description: "Things related to urbanism")
tech = Category.create(category_name: "Technology", category_description: "Things related to technology")
entre = Category.create(category_name: "Entrepreneurship", category_description: "Things related to entrepreneurship")


puts "Creating owner..."

# Create the owners for "No More Cables"
Owner.create(user_id: garzaeugenio.id, project_id: cables.id, category_id: urban.id)
Owner.create(user_id: garzaartemio.id, project_id: urbanplan.id, category_id: urban.id)
Owner.create(user_id: mila.id, project_id: signs.id, category_id: urban.id)
Owner.create(user_id: agarza.id, project_id: funding.id, category_id: entre.id)
Owner.create(user_id: andresgarza.id, project_id: app.id, category_id: tech.id)


puts "There are now #{Project.count} project, #{User.count} users, and #{Category.count} categories in the database."