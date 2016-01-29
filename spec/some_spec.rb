require 'spec_helper'
require 'torquebox-messaging'

RSpec.describe 'Random spec' do
  it 'works' do
    queue = TorqueBox::Messaging.queue('testqueue')
    listener = queue.listen {}
    expect(true).to eq(true)
    listener.close
    queue.stop
  end
end
