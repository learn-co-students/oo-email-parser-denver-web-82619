# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
    attr_reader :emails
    @@all = []

    def self.all
        @@all
    end
    
    def initialize (emails)
        @emails = emails
        self.class.all << emails
    end

    def parse
        self.emails.split(", ").join(" ").split(" ").uniq
        
    end




end

