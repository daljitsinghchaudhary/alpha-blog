require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

	 def setup
	 	@category = Category.create(name: "sports")
	 end

	test "should get categories index" do
		get :index
		assert_response :success
	end

	test "should get new" do
		get :new
		assert_response :success
	end

	test "should get show" do
		get(:show, {'id' => @category.id})
		assert_response :success
	end

end


# If Rails 5, then use the following instead:

# require 'test_helper'

# class CategoriesControllerTest < ActionDispatch::IntegrationTest

# def setup

# @category = Category.create(name: "sports")

# end

# test "should get categories index" do

# get categories_path

# assert_response :success

# end

# test "should get new" do

# get new_category_path

# assert_response :success

# end

# test "should get show" do

# get category_path(@category)

# assert_response :success

# end

# end