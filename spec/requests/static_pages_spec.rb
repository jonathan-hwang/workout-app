require 'spec_helper'

describe "Static pages" do

    describe "Home page" do
    
        it "should have the content 'App Name'" do
            visit '/static_pages/home'
            expect(page).to have_content('App Name')
        end        
    end
    
    describe "About Us page" do
    
        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')        
        end
    end
    
    describe "Contact Us page" do
        it "should have the content 'Contact Us'" do
            visit '/static_pages/contact'
            expect(page).to have_content('Contact Us')
        end
    end
    
end
