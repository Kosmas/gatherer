require 'rails_helper'

describe AvatarAdapter do

  it 'accurately receives image ur', :vcr do
    user = double(twitter_handle: 'kosmas7')
    adapter = AvatarAdapter.new(user)
    url = 'http://pbs.twimg.com/profile_images/266988973/n782517742_3697_bigger.jpg'
    
    expect(adapter.image_url).to eq(url)
  end
end
