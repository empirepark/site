# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

job_categories = [
  {
    title: 'Administrative',
    description: %q(
Positions related to managing Empire Park such as, but not limited to:
- Board Positions
- Hall Rental Managers
- Book Keepers
- Facility Maintenance
)
  },
  {
    title: 'Technology',
    description: %q(
Positions related to developing and managing Empire Park's technology such as, but not limited to:
- Front-end web developers
- Back-end developers
- DevOps / Server Administators
- Designers
)
  },
  {
    title: 'Events',
    description: %q(
Positions related to single one off events or projects. These are great for people who just want to dip their toes in. Examples include:
- Community Leage Day
- Movie Nights
- Paint the Hall team
)
  },
  {
    title: 'Programs',
    description: %q(
Positions related to ongoing programs. These require a commitment for a period of time. Examples include:
- Skating Rink Attendant
- Yoga Instructor
- Code Dojo Instructor
)
  }
]

job_categories.each do |item|
  record = JobCategory.find_or_initialize_by(title: item[:title])
  item[:description] = item[:description].strip
  record.assign_attributes item
  record.save!
end


asset_types = [
  {
    name: 'features',
    description: 'Background image for a single feature presented on the main page.',
    max_dimensions: '600x1024',
    allowed_filetypes: 'png, jpeg, jpg'
  }
]

asset_types.each do |item|
  record = AssetType.find_or_initialize_by(name: item[:name])
  record.assign_attributes item
  record.save!
end
