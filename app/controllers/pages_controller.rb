class PagesController < ApplicationController
    def index
        @entries = Entry.limit(5)
    end
end
