# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# IMAGE URLS
img1 = 'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1498&q=80'
img2 = 'https://images.unsplash.com/photo-1524824267900-2fa9cbf7a506?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
img3 = 'https://images.unsplash.com/photo-1511795409834-ef04bbd61622?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'
img4 = 'https://images.unsplash.com/photo-1522413452208-996ff3f3e740?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
img5 = 'https://images.unsplash.com/photo-1513507544439-d2cd3d79b274?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
img6 = 'https://images.unsplash.com/photo-1532431993925-00ed69b363bc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'

# DESCRIPTIONS
desc1 = 'This is a medium-sized table that can accommodate up to 5 people, making it perfect for a family dinner. It offers enough space for a comfortable dining experience, with ample room for dishes and utensils. The table is designed with simplicity and functionality in mind, featuring a clean, modern design that will complement any restaurant decor.'
desc2 = 'This is table is perfect for a birthday party. This table offers plenty of space for guests to enjoy their meals, with room for appetizers, entrees, and desserts. The design of the table is festive and fun, featuring bright colors and playful decorations that will create a celebratory atmosphere.'
desc3 = 'This table is ideal for a family gathering. This table offers ample space for guests to mingle and socialize, with a design that promotes a sense of warmth and togetherness. The table is versatile enough to accommodate a range of dining options, from a buffet-style meal to a formal sit-down dinner. '
desc4 = 'This is a cozy table for a party of 10 people. The table features a warm and intimate design, with comfortable seating arrangements that encourage conversation and camaraderie. The size of the table allows for easy communication among guests, making it an excellent choice for a social gathering. '
desc5 = 'This table is perfect for romantic double date. The design of the table is elegant and sophisticated, with a focus on intimacy and privacy. The table is positioned in a quiet corner of the restaurant, away from the hustle and bustle, creating a romantic and intimate atmosphere. '
desc6 = 'This is a grand table that can seat up to 50 people, making it perfect for a wedding party. The table offers a grand and luxurious design, with ample space for a formal sit-down dinner or a lavish buffet. The table is positioned in a private area of the restaurant, creating a sense of exclusivity and elegance.'

table1 = RestaurantTable.create(id: 1, image: img1, name: 'Table 1', table_size: 5, price: 50.00, desc: desc1)
table1 = RestaurantTable.create(id: 2, image: img2, name: 'Table 2', table_size: 8, price: 80.00, desc: desc2)
table1 = RestaurantTable.create(id: 3, image: img3, name: 'Table 3', table_size: 15, price: 150.00, desc: desc3)
table1 = RestaurantTable.create(id: 4, image: img4, name: 'Table 4', table_size: 10, price: 90.00, desc: desc4)
table1 = RestaurantTable.create(id: 5, image: img5, name: 'Table 5', table_size: 8, price: 120.00, desc: desc5)
table1 = RestaurantTable.create(id: 6, image: img6, name: 'Table 6', table_size: 20, price: 200.00, desc: desc6)
