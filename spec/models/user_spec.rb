require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates or updates itself from an oauth hash" do
    auth = {
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
        expires_at: DateTime.now
      }
    }
    User.update_or_create(auth)
    new_user = User.first

    expect(new_user.provider).to eq("google")
    expect(new_user.uid).to eq("1234567890")
    expect(new_user.email).to eq("person@name.com")
    expect(new_user.first_name).to eq("Person")
    expect(new_user.last_name).to eq("Name")
    expect(new_user.token).to eq("abcdef123456")
    expect(new_user.refresh_token).to eq("123456abcdef")
    expect(new_user.oauth_expires_at).to eq(auth[:credentials][:expires_at])

  end
end
