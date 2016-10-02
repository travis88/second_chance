require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  	describe "GET /static_pages" do
  		let = "Ruby on Rails Tutorial Sample App |"

    	describe "Home page" do
    		it "should have the content 'Sample App'" do
    			visit "/static_pages/home"
    			expect(page).to have_content("Sample App")
    		end

    		it "should have title 'Home'" do
    			visit "/static_pages/home"
    			expect(page).to have_title("#{let} Home")
    		end
    	end

    	describe "Help page" do
    		it "should have content 'Help'" do
    			visit "/static_pages/help"
    			expect(page).to have_content("Help")
    		end

    		it "should have title 'Help'" do
    			visit "/static_pages/help"
    			expect(page).to have_title("#{let} Help")
    		end
    	end

    	describe "About page" do
    		it "should have content 'About Us'" do
    			visit "/static_pages/about"
    			expect(page).to have_content("About Us")
    		end

    		it "should have title 'About Us'" do
    			visit "/static_pages/about"
    			expect(page).to have_title("#{let} About Us")
    		end
    	end

    	describe "Contact page" do
    		it "should have content 'Contacts'" do
    			visit "/static_pages/contact"
    			expect(page).to have_content('Contacts')
    		end

    		it "should have title 'Contact'" do
    			visit "/static_pages/contact"
    			expect(page).to have_title("#{let} Contact")
    		end
    	end
  	end
end
