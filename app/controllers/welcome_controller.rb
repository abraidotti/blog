class WelcomeController < ApplicationController
  before_action :redirect_logged_in, only: [:index]

   def index
   end

   def redirect_logged_in
     if current_user
       redirect_to articles_path
     end
   end

 end
