require 'test_helper'

class GifTest < ActiveSupport::TestCase
   test "can be assigned a kist of tafs" do
     gif = Gif.new(tag_list: "one, two, three")
     assert_equal ["one", "two", "three"], gif.tag_list
   end

   test "can assigned an image" do
     gif = Gif.create(image: File.open("test/files/example.gif", "rb"))

     assert_equal "gif", gif.image.extension
     assert_equal "image/gif", gif.image.mime_type
   end

end
