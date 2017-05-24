  # Example from the video
  module ContactInfo
    attr_accessor :first_name, :last_name, :cellphone
    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end
  end
