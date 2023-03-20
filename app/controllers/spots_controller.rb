class SpotsController < ApplicationController

    def index
        # params[:q]のqには検索フォームに入力した値が入る
        @q = Spot.ransack(params[:q])
        # distinct: trueは重複したデータを除外
        @spots = @q.result(distinct: true)
    end
    
end
