require 'spec_helper'

describe Lita::Handlers::Wings, lita_handler: true do
  it 'wings' do
    send_message ' i like wings i do'
    expect(replies.last).to include('http://4gspot.files.wordpress.com/2010/10/1273212602563.gif')
  end

  it 'doesn\'t :wings:' do
    send_message ':wings:'
    expect(replies.last.to_s).to_not include('http://4gspot.files.wordpress.com/2010/10/1273212602563.gif')
  end

  it 'wing bombs' do
    send_command 'wing bomb'
    expect(replies.count).to eq(5)
    expect(replies.last).to include('http://4gspot.files.wordpress.com/2010/10/1273212602563.gif')
  end
end
