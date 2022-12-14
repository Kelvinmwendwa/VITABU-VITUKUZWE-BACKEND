class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #books routes
  get '/books' do
    get_books = Book.all.order(:asc)
    get_books.to_json 
  end

  get '/books/:id' do 
    get_books_by_id = Book.find(params[:id])
    get_books_by_id.to_json
  end

  post '/books' do
    new_book = Book.create(
      title: params[:title], authors: params[:authors], image: params[:image],
      description: params[:description], genre: params[:genre]
    )
    new_book.to_json
  end

  patch '/books/:id' do
    patch_book = Book.find(params[:id])
    patch_book.update(
      title: params[:title], authors: params[:authors], image: params[:image],
      description: params[:description], genre: params[:genre]
    )
    patch_book.to_json
  end

  delete '/books/:id' do
    delete_book = Book.find(params[:id])
    delete_book.destroy
    delete_book.to_json
  end

  #users routes
  get '/users' do
    get_users = User.all.order(:asc)
    get_users.to_json 
  end

  get '/users/:id' do 
    get_user_by_id = User.find(params[:id])
    get_user_by_id.to_json
  end

  post '/users' do
    new_user = User.create(
      name: params[:name], email: params[:email], 
      password: params[:password]
    )
    new_user.to_json
  end

  patch '/users/:id' do
    patch_user = User.find(params[:id])
    patch_user.update(
      name: params[:name], email: params[:email], 
      password: params[:password]
    )
    patch_user.to_json
  end

  delete '/users/:id' do
    delete_user = User.find(params[:id])
    delete_user.destroy
    delete_user.to_json
  end

  #reviews routes
  
  get '/reviews' do
    get_reviews = Review.all.order(:asc)
    get_reviews.to_json 
  end

  get '/reviews/:id' do 
    get_reviews_by_id = Review.find(params[:id])
    get_reviews_by_id.to_json
  end

  post '/reviews' do
    new_review = Review.create(
      name: params[:name], 
      review: params[:review]
    )
    new_review.to_json
  end

  patch '/review/:id' do
    patch_review = Review.find(params[:id])
    patch_review.update(
      name: params[:name], 
      review: params[:review]
    )
    patch_review.to_json
  end

  delete '/review/:id' do
    delete_review = Review.find(params[:id])
    delete_review.destroy
    delete_review.to_json
  end

end