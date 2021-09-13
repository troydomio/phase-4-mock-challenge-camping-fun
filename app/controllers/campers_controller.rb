class CampersController < ApplicationController

    def index 
        render json: Camper.all, except:[:created_at, :updated_at]
    end

    def show 
      campers= Camper.find_by(id: params[:id])
        if campers
            render json: campers,include:[:activities], except:[:created_at, :updated_at]
        else 
            render json: {
                "error": "Camper not found"
              }
        end

            #   Camper.find_by(id: params[:id]),include:[:activities], except:[:created_at, :updated_at]
      

    end 


end
