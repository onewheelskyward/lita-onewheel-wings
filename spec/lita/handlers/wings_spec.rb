require "spec_helper"

describe Lita::Handlers::Wings, lita_handler: true do
  it 'wings' do
    send_message ' i like wings i do'
    expect(replies.last).to eq ('http://4gspot.files.wordpress.com/2010/10/1273212602563.gif')
  end
end
