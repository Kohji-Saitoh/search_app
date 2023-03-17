class SpotsController < ApplicationController
    before_action :search

    def search
        # params[:q]のqには検索フォームに入力した値が入る
        @q = Spot.ransack(params[:q])
    end

    def index
        # distinct: trueは重複したデータを除外
        @spots = @q.result(distinct: true)
    end
    
end
