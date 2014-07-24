require_relative 'spec_helper'

Capybara.app_host = 'http://localhost:9292'
Capybara.default_driver = :selenium

describe 'App' do

  let(:page) { AppPage.new }

  it "exists" do
    page.load
    expect(page.has_header?).to be true
  end


end
