puts "🌱 Seeding spices..."
Ingridient.destroy_all
Recipe.destroy_all
# Seed your database here

#inridients instances
u1=Ingridient.create(
    
    name:"onion",
    quantity:2,
     recipe_id:1
)
u2=Ingridient.create(
    name:"olive oil",
    quantity:3,
     recipe_id:1
)
u3=Ingridient.create(
    name:" garlic",
    quantity:1,
     recipe_id:1
)
u4=Ingridient.create(
    name:"ground beef",
    quantity:1,
     recipe_id:1
)
u5=Ingridient.create(
    name:"tomato",
    quantity:1,
     recipe_id:1
)
u6=Ingridient.create(
    name:" salt",
    quantity:1,
     recipe_id:1
)
u7=Ingridient.create(
    name:"spaghetti",
    quantity:1,
     recipe_id:1
)
#recipe instances
r1= Recipe.create(

        name:"stew",
        description:"A classic pasta dish",
        instructions:"1. Heat olive oil in a large skillet over medium heat. Add onion and garlic; cook and stir until onion is translucent, about 5 minutes. Add ground beef; cook and stir until browned, 5 to 7 minutes. Stir in diced tomatoes,saltand basil. Bring to a boil; reduce heat and simmer for 20 to 30 minutes.

        2. Bring a large pot of lightly salted water to a boil. Cook spaghetti in the boiling water, stirring occasionally, until tender yet firm to the bite, about 12 minutes. Drain.
        
        3. Serve spaghetti topped with sauce and Parmesan cheese."
    
)
puts "✅ Done seeding!"
