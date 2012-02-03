#require 'test_helper'

#class BookTest < ActiveSupport::TestCase
  
 # test "a book with all attributes should be valid" do
  #  @book = books(:steppenwolf)
   # assert @book.valid?
 # end
  
#  test "a book without a title should not be valid" do
 #   @book = books(:steppenwolf)
 #   @book.title = ''
 #   assert @book.invalid?
 # end
  
#  test "a book without authors should not be valid" do
  #  book = books(:steppenwolf)
  #  book.authors = ''
  #  assert book.invalid?
  #end
  
#  test "book title must be unique" do
 #   book = books(:steppenwolf)
 #   other_book = book.dup
 #   assert other_book.invalid?
#  end
  
 # test "a book without ISBN should not be valid" do
 #   book = books(:steppenwolf)
 #   book.isbn = ""
 #   assert book.invalid?
#  end
  
 # test "a book with an invalid ISBN should not be valid" do
  #  book = books(:steppenwolf)
  #  book.isbn = "kjfokfkoekfofek"
  #  assert book.invalid?
#  end
  
#end

#another way to do it is instantiating a variable

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  
  setup do
    @book = books(:steppenwolf)
  end
  
  test "a book with all attributes should be valid" do
    assert @book.valid?
  end
  
  test "a book without a title should not be valid" do
    @book.title = ''
    assert @book.invalid?
  end
  
  test "a book without authors should not be valid" do
    @book.authors = ''
    assert @book.invalid?
  end
  
  test "book title must be unique" do
    other_book = @book.dup
    assert other_book.invalid?
  end
  
  test "a book without ISBN should not be valid" do
    @book.isbn = ""
    assert @book.invalid?
  end
  
  test "a book with an invalid ISBN should not be valid" do
    @book.isbn = "djskfdskjh"
    assert @book.invalid?
  end
  
end
