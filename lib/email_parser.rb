# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)
    @csv_emails = csv_emails #class reader   
  end 
  
  def parse 
    csv_emails.split.collect do |email| #interate over the email address and split at the comma. 
      email.split(',')
    end
    .flatten.uniq #returns a new AND unique array 
  end
  
  
  
end