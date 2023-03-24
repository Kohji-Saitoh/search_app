class Spot < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :region
end
