class SearchResultsController < ApplicationController
  def index
    puts "Getting session search results"
    puts session[:search_results]
    
    @search_result = session[:search_results]
    @posts = []

    @search_result.each do |_result|
      @post = Post.new(_result)
      @posts << @post 
    end
    
  end
end
