require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  context "Home Page" do
    before { visit '/static_pages/home' }
    it "should have the content 'Sample App'" do
      expect(page).to have_content 'Sample App'
    end
    it "should have the right title" do
      expect(page).to have_title "#{base_title}"
    end

    it "should not have a custom title" do
      expect(page).should_not have_title "|"
      #should_not have_title "|"
    end
  end

  context "Help Page" do
    before { visit '/static_pages/help' }
    it "should have the content 'Help'" do
      expect(page).to have_content 'Help'
    end
    it "should have the right title" do
      expect(page).to have_title "#{base_title} | Help"
    end
  end

  context "About Page" do
    before { visit '/static_pages/about' }
    it "should have the content 'About'" do
      expect(page).to have_content 'About'
    end
    it "should have the right title" do
      expect(page).to have_title "#{base_title} | About"
    end
  end

  context "Contact Page" do
    before { visit '/static_pages/contact' }
    it "should have the content 'Contact'" do
      expect(page).to have_content 'Contact'
    end
    it "should have the right title" do
      expect(page).to have_title "#{base_title} | Contact"
    end
  end
end
