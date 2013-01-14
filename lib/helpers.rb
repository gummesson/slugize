helpers do
  # Transform the title into a slug
  def slugize(title)
   "#{title}".gsub(/[^[:alnum:]]+/, "-").downcase
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
