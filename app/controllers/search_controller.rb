class SearchController < ApplicationController
  def new
  end

  def create
    begin
      search_term = params[:title]
      search_term = search_term.downcase
      search_result = Post.where(
        "title like ?", "%"+ search_term +"%"
      )
      
      puts "Search Results Controller"
      puts search_result

      session[:search_results] = search_result
      
      puts "Setting session search results"
      puts session[:search_results]

      redirect_to search_results_index_url
    rescue ActiveRecord::RecordNotFound
      #Empty search results
      session[:search_results] = nil
      redirect_to search_url, alert: "Sorry, no such recipe..."
    end
  end

end
