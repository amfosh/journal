class CategoriesController < ApplicationController
    def index
       @categories = Category.pluck(:name)
    end
end