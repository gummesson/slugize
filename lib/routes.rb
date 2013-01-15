# Index
get '/' do
  erb :index
end

# Get slug
post '/slug' do
  if params[:title].empty?
    redirect '/'
  else
    if params[:date].nil?
      @slug = "#{slugize(params[:title])}"
    else
      @slug = "#{date}-#{slugize(params[:title])}"
    end
    erb :index
  end
end

# Not Found
not_found do
  message("Whoops! The requested route couldn't be found. Sorry!")
end

# Error
error do
  message("Whoops! An error occurred. Booooo!")
end
