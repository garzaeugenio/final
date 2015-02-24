# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
User.delete_all
Project.delete_all
Category.delete_all

# Create the users
puts "Creating users..."
garzaeugenio = User.create(email: "garzaeugenio@gmail.com", password: "1234", name: "Eugenio", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL", project_id: "109")
garzaartemio = User.create(email: "garzaartemio@me.com", password: "1234", name: "Artemio", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL", project_id: "110")
mila = User.create(email: "milarca@icloud.com", password: "1234", name: "Milarca", last_name: "Fernandez", gender: "female", city: "San Pedro Garza Garcia", state: "NL", project_id: "111")
agarza = User.create(email: "alfonsogarza@gmail.com", password: "1234", name: "Alfonso", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL", project_id: "112")
andresgarza = User.create(email: "andresgarza@gmail.com", password: "1234", name: "Andres", last_name: "Garza", gender: "male", city: "Monterrey", state: "NL", project_id: "113")

# Create the projects
puts "Creating projects..."
signs = Project.create(project_name: "No More Signs", description: "Eliminate large billboards in the city", user_id: "107", category_id: "62")
app = Project.create(project_name: "Citywide App", description: "Create a citywide app to improve services", user_id: "108", category_id: "63")
fund = Project.create(project_name: "Startup Funding", description: "Create resources to provide more startup funding", user_id: "109", category_id: "64")
school = Project.create(project_name: "More School Funding", description: "Increase Funding for Schools", user_id: "110", category_id: "65")
police = Project.create(project_name: "More Policing", description: "Increase Policing", user_id: "11", category_id: "66")

# Create the categories
puts "Creating categories..."
urban = Category.create(category_name: "Urbanism", category_description: "Things related to urbanism", project_id: "109")
tech = Category.create(category_name: "Technology", category_description: "Things related to technology", project_id: "110")
entre = Category.create(category_name: "Entrepreneurship", category_description: "Things related to entrepreneurship", project_id: "111")
edu = Category.create(category_name: "Education", category_description: "Things related to education", project_id: "112")
safe = Category.create(category_name: "Safety", category_description: "Things related to safety", project_id: "113")
puts "Creating owner..."

# Create the owners for "No More Cables"
Owner.create(user_id: garzaeugenio.id, project_id: signs.id, category_id: urban.id)
Owner.create(user_id: garzaartemio.id, project_id: app.id, category_id: tech.id)
Owner.create(user_id: mila.id, project_id: fund.id, category_id: entre.id)
Owner.create(user_id: agarza.id, project_id: school.id, category_id: edu.id)
Owner.create(user_id: andresgarza.id, project_id: police.id, category_id: safe.id)


puts "There are now #{Project.count} project, #{User.count} users, and #{Category.count} categories in the database."