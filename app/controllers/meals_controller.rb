class MealsController < ApplicationController

    def new
        @meal = Meal.new
    end

    def create
        @meal = Meal.new(meal_params)
        if @meal.save
            redirect_to meal_path(@meal)
        else
            render :new
        end
    end

    private

    def meal_params
        params.require(:meal).permit(:name, :type, :restaurant_id, restaurant_attributes: [:name])
    end

end
