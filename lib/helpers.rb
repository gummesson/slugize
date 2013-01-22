helpers do
  # Parses the title into a slug
  #
  #  title = The given title. Transforms the title into a slug by removing 
  #          ', !, ?, :, replacing the whitespace with - and changing it to
  #          downcase.
  #
  def slugize(title)
    "#{title}".gsub(/(\'|\!|\?|\:|\s\z)/,"").gsub(/\s/,"-").downcase
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
