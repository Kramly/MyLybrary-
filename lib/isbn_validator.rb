class IsbnValidator


 VALID_CHARACHTER = ["0", "1", "2", "3", "x"]
 #attr_accessor :isbn  
  attr_reader :isbn

  def initialize(isbn)

    if isbn.nil?
      @isbn = ""
    else
      @isbn = cleanup_isbn(isbn)     
    end
   end
 
  def valid?
    if @isbn.size == 10 || @isbn.size == 13
  return true

  else 
  return false

    end
  end


  def self.valid_character?(c)
    return c == "1" || c =="2" || c =="3" 
    
  end 

  private 

  def cleanup_isbn(isbn)
   isbn.downcase.gsub(/-| /, "")
  end

end

