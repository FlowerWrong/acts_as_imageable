require 'test_helper'
require 'awesome_print'

class VotableTest < ActiveSupport::TestCase
  def setup
    @post1 = Post.create title: 'post1', content: 'content1'
    @post2 = Post.create title: 'post2', content: 'content2'
    @post3 = Post.create title: 'post3', content: 'content3'
  end

  def teardown
    @post1 = nil
    @post2 = nil
    @post3 = nil
  end

  test 'post1 should upload an image' do
    image = File.open("#{ActsAsImageable.test}/avatar.jpg")
    # @post1.upload_image(image)
  end
end
