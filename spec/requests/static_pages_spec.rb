require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do

      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        page.should have_content('Sample App')

      # Run the generator again with the --webrat flag if you want to use webrat methods/matcher
      end
      it "should have the title 'Home'" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
      end
  end

  describe "GET /static_pages" do
    it "should have the content 'help'" do
    visit '/static_pages/help'
    page.should have_content('help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "GET /static_pages" do
    it "should have the content 'About Us'"do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  describe "Contact Page" do
    describe "GET /static_pages" do
      it "should have h1 'Contact'" do
        visit '/static_pages/contact'
        page.should have_selector('h1', text: 'Contact')

      end
      it "should have title 'Contact'" do
        visit '/static_pages/contact'
        page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")

      end
  end
 end
end
