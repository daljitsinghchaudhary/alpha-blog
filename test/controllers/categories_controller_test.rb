require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

	 def setup
	 	@category = Category.create(name: "sports")
	 	@user = User.create(username: "john", email: "john@example.com", password: "Password", admin: true)
	 end

	test "should get categories index" do
		get :index
		assert_response :success
	end

	test "should get new" do
		session[:user_id] = @user.id
		get :new
		assert_response :success
	end

	test "should get show" do
		get(:show, {'id' => @category.id})
		assert_response :success
	end

	test "should redirect when admin not logged in" do
		assert_no_difference 'Category.count' do
			post :create, category: {name: "sports"}	
		end
		assert_redirected_to categories_path
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