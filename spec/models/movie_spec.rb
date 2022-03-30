require 'rails_helper'

RSpec.describe Movie, type: :model do
   # タイトルと製作年と上映時間と映倫区分があれば有効な状態であること
   it "is valid with a title, production_year, running_time, rating" do
   movie = Movie.new(
    title: 'DIC',
    production_year: 2000,
    running_time: 120,
    rating: 'G')
  expect(movie).to be_valid
  end

   # タイトルがなければ無効な状態であること
   it "is invalid without a title" do
    movie = Movie.new(title: nil)
    movie.valid?
    expect(movie.errors[:title]).to include("can't be blank")
  end
   # 重複したタイトルなら無効な状態であること
   it "is invalid with a duplicate title" do
    Movie.create(
      title: 'DIC',
      production_year: 2000,
      running_time: 120,
      rating: 'G')
    movie = Movie.new(
      title: 'DIC',
      production_year: 3000,
      running_time: 150,
      rating: 'PG12')
    movie.valid?
    expect(movie.errors[:title]).to include("has already been taken")
    end
   # タイトルが101文字以上なら無効な状態であること
   it "is invalid with title is 101 or more characters" do
    movie = Movie.new(title: 'a' * 101)
    movie.valid?
    expect(movie.errors[:title]).to include("is too long (maximum is 100 characters)")
  end
  it "is invalid without a production_year" do
    movie = Movie.new(production_year: nil)
    movie.valid?
    expect(movie.errors[:production_year]).to include("can't be blank")
  end
  it "is invalid without a running_time" do
    movie = Movie.new(running_time: nil)
    movie.valid?
    expect(movie.errors[:running_time]).to include("can't be blank")
  end
  it "is invalid without a rating" do
    movie = Movie.new(rating: nil)
    movie.valid?
    expect(movie.errors[:rating]).to include(" not be blank")
  end
end
