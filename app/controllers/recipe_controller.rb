class RecipeController < ApplicationController
    # Routings
        get "/recipe" do
           recipes=Recipe.all 
           recipes.to_json
        end

        get"/recipe/:id" do
         recipe=Recipe.find_by(id: params[:id])
         recipe.to_json
        end

        post "/recipe" do
          name = params[:name]
          description = params[:description]
          instructions= params[:instructions]

          if(name.present? )
              check_recipe_exists = Recipe.where(name: name).count()
               if check_recipe_exists < 1
                  recipe = Recipe.create(name: name, instructions: instructions, description: description)
                  if user
                      message = {:succcess => "Recipe created successfully!!"}
                      message.to_json
                  else
                      message = {:error => "Error saving recipe!"}
                      message.to_json
                  end
              else
                  message = {:error => "recipe exists!"}
                  message.to_json
              end
          else
              message = {:error => "Recipe exists"}
              message.to_json
          end
          
      end

      patch"/recipe/:id" do
        recipe=Recipe.find_by(id: params[:id])
        name=params[:name]
        description=params[:description]
        instructions=params[:instructions]
        recipe.update(
          name: name,
          description: description,
          instructions: instructions
          )
        recipe.to_json
         end
    delete "/recipe/:id"do
    recipe=Recipe.find_by(id: params[:id])
    recipe.destroy
    {
        message:"Deleted successfully #{:id}",
        status:"http_status ok"
      }.to_json()  
    end
    end