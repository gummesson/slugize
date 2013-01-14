helpers do
  # Transforms the title into a slug by removing ', ! and ?
  # and replacing whitespace with -
  def slugize(title)
    "#{title}".gsub(/(\'|\!|\?)/,"").gsub(/\s/,"-").downcase
  end

  # Parse date
  def date
    Date.today
  end

  # Display message
  def message(message)
    @message = message
  end
end
