Griddler.configure do |config|
  config.processor_class = ::EmailProcessor
  config.email_service = :mailgun
end
