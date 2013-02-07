helpers do
  # Parses the title into a slug
  #
  #  title = The given title. Transforms the title into a slug by removing 
  #          various characters, replacing the whitespace and changing it to
  #          downcase.
  #
  def slugize(title)
    remove_characters  = /(\,|\.|\'|\!|\?|\:|\s\z|\#\s)/
    replace_characters = /(\s|\/)/

    "#{title}".downcase.gsub(remove_characters,"").gsub(replace_characters,"-")
  end

  # Parses the date
  #
  #  today = yyyy-mm-dd
  #
  def date
    Date.today
  end

  # Displays a message
  #
  #  message = The given message. Redirects to another page with a different
  #            layout to display the message.
  #
  def message(message)
    @message = message
    erb :message
  end
end
