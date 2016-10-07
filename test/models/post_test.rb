require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "if title is there and body is long enough"  do
  	post = Post.new(title: "Some title", body: "this is the body text")
  	assert post.valid?
  end

end
