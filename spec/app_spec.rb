require_relative 'spec_helper'

Capybara.app_host = 'http://localhost:9292'
Capybara.default_driver = :selenium

describe 'App' do

  let(:page) { AppPage.new.tap { |pg| pg.load } }

  it "exists" do
    expect(page.has_header?).to be true
  end

  describe "button" do

    it "adds an item when clicked" do
      page.input.set 'Watermelon'
      page.button.click
      page.wait_for_items
      expect(page.items.size).to be 1
    end

  end

end
