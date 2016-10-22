require 'rails_helper'
require 'support/utilities'

RSpec.describe "UserPages", type: :request do
  	describe "GET /user_pages" do

  		subject { page }

  		describe 'Signup page' do
  			before { visit signup_path }

  			it { should have_selector('h1',text: 'Sign up') }
  			it {should have_title(full_title('Sign up'))}
  		end

  	end
end
