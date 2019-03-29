class LandmarksController < ApplicationController

  get '/landmarks' do
    binding.pry
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmarks = Landmark.all
    erb :'/landmarks/show'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    @landmark.save
    #@figure.titles << Title.create(:name=> params[:title][:name])
    #@figure.landmarks << Landmark.create(:name=> params[:landmark][:name])
    redirect "/landmarks"
  end
end
