class CalcController < ApplicationController
    require "strscan"
    
      def index
     
        if params[:formula] != nil then
         @scanner = params[:formula]
        end
      end
    
end