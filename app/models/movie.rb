class Movie < ApplicationRecord
 validates :title, presence: true, uniqueness: true, length:{ maximum:100}
 validates :production_year,presence: true,uniqueness: false
 validates :running_time,presence: true,uniqueness:false
 validates :rating,presence: true,uniqueness: false
 enum status: {公開前:0, 公開中:1}
end
