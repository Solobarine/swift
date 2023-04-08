require_relative 'rails_helper'

RSpec.describe User, type: model do
  subject { User.new(name: 'Midelaar', photo: 'http:/randomImage.where', bio: 'A humble man who loved his rubies.') }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not_be_valid
  end

  it 'Post counter should be greater than 50 characters' do
    subject.posts_counter = -1
    expect(subject).to_not_be_valid
  end
end
