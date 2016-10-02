require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  	describe "GET /static_pages" do
  		tr = "Ruby on Rails Tutorial Sample App |"

    	describe "Home page" do
    		it "should have the content 'Sample App'" do
    			visit "/static_pages/home"
    			expect(page).to have_content("Sample App")
    		end

    		it "should have title 'Home'" do
    			visit "static_pages/home"
    			expect(page).to have_title("#{tr} Home")
    		end
    	end

    	describe "Help page" do
    		it "should have content 'Help'" do
    			visit "/static_pages/help"
    			expect(page).to have_content("Help")
    		end

    		it "should have title 'Help'" do
    			visit "static_pages/help"
    			expect(page).to have_title("#{tr} Help")
    		end
    	end

    	describe "About page" do
    		it "should have content 'About Us'" do
    			visit "/static_pages/about"
    			expect(page).to have_content("About Us")
    		end

    		it "should have title 'About Us'" do
    			visit "static_pages/about"
    			expect(page).to have_title("#{tr} About Us")
    		end
    	end
  	end
end
