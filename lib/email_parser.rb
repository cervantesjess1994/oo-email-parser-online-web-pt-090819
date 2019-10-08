class EmailParser

attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
      seperated_emails = @emails.split(/[ ,]/)
      unique_emails = seperated_emails.uniq
      unique_emails.reject {|email| email.empty?}
    end

end