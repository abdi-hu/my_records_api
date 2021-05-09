class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "My Doctors API" }
      end
end
