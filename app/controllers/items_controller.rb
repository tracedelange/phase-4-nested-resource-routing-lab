class ItemsController < ApplicationController

  def index

    if params[:user_id]
      user = User.find(params[:user_id])
      items = user.items
    else
      items = Item.all
    end
    render json: items

  end

end

if params[:dog_house_id]
  dog_house = DogHouse.find(params[:dog_house_id])
  reviews = dog_house.reviews
else
  reviews = Review.all
end
render json: reviews, include: :dog_house