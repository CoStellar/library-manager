# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(
  email: 'admin@example.com',
  password: 'admin123',
  username: 'admin',
  first_name: 'Admin',
  last_name: 'User',
  approved: true,
  role: 2  # Admin
)

User.create(
  email: 'librarian@example.com',
  password: 'librarian123',
  username: 'librarian',
  first_name: 'Librarian',
  last_name: 'User',
  approved: true,
  role: 1  # Bibliotekarz
)

User.create(
  email: 'regular_user@example.com',
  password: 'user123',
  username: 'user',
  first_name: 'Regular',
  last_name: 'User',
  approved: true,
  role: 0  # Zwykły użytkownik
)