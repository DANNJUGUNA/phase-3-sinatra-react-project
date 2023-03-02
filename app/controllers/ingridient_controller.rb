class IngridientController < ApplicationController 
    get"/ingridients" do
        ingridients=Ingridient.all
        ingridients.to_json
    end
   get"/ingridients/:id" do
     ingridient=Ingridient.find_by(id: params[:id])
    ingridient.to_json
    end
    post "/ingridients" do
        name=params[:name]
        quantity=params[:quantity]
        recipe_id=params[:recipe_id]
      ingridient=Ingridient.create(
        name:name,
       quantity:quantity,
       recipe_id:recipe_id
      )
      ingridient.save
      {
        message:"Created an ingridient successfully",
        status:"http 200 ok"
      }.to_json()
    end
    patch"/ingridients/:id" do
       ingridient=Ingridient.find_by(id: params[:id])
       name=params[:name]
       quantity=params[:quantity]
       recipe_id=params[:recipe_id]
      
       ingridient.update(
        name:name,
        quantity:quantity,
        recipe_id:recipe_id
       )
       ingridient.to_json
        end
        delete"/ingridient/:id" do
          ingridient=Ingridient.find_by(id: params[:id])
          ingridient.destroy
          {
            message:"Deleted successfully #{:id}",
            status:"http_status ok"
          }.to_json()
        end
end