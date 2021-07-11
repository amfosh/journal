class PagesController < ApplicationController
    def index
        @entries = Entry.all.uniq
    end
end
