helpers do
  # Transforms the title into a slug by removing ', ! and ?
  # and replacing whitespace with -
  def slugize(title)
    "#{title}".gsub(/(\'|\!|\?|\:|\s\z)/,"").gsub(/\s/,"-").downcase
  end

  # Parse date
  def date
    Date.today
  end

  # Display message
  def message(message)
    @message = message
    erb :message
  end
end
