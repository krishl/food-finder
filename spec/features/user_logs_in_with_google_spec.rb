require 'rails_helper'

RSpec.feature "user logs in" do
  scenario "using google oauth2" do
    stub_omniauth
    visit root_path
    expect(page).to have_link("Sign in with Google")
    click_link "Sign in with Google"
    expect(page).to have_content("Person Name")
    expect(page).to have_link("Logout")
  end
end

def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
    provider: "google",
      uid: "1234567890",
      info: {
        email: "person@name.com",
        first_name: "Person",
        last_name: "Name"
      },
      credentials: {
        token: "abcdef123456",
        refresh_token: "123456abcdef",
        expires_at: DateTime.now,
      }
  })
end
