class MealsController < ApplicationController

    def index
        @meals = Meal.all
    end

    def new
        @meal = Meal.new
        @meal.build_restaurant
    end

    def create
        @meal = Meal.new(meal_params)
        if @meal.save
            redirect_to meals_path
        else
            @meal.build_restaurant
            render :new
        end
    end

    private

    def meal_params
        params.require(:meal).permit(:name, :description, :restaurant_id, restaurant_attributes: [:name, :description])
    end

end
