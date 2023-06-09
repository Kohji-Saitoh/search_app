class SpotsController < ApplicationController
    before_action :search

    def search
        # params[:q]のqには検索フォームに入力した値が入る
        @q = Spot.ransack(params[:q])
        @q.combinator = 'or'
    end

    def index
        # distinct: trueは重複したデータを除外
        @spots = @q.result(distinct: true)
    end
    
    def new
        @spot = Spot.new
    end
      
    def create
        @spot = Spot.new(spots_params)
        if @spot.save
            flash[:notice] = 'スポット登録が完了しました'
            redirect_to root_path
        else
            render('spots/new')
        end
    end

    private
    def spots_params
      params.require(:spot).permit(:name, :text, :region_id)
    end
end
