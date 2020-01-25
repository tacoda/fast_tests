require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'can have pets' do
    alice = Person.create!
    fluffy = Pet.create!
    alice.pets << fluffy
    expect(alice.reload.pets).to eq([fluffy])
  end

  # This test _could_ be here, but better to pull it out
  # Reason: test performance
  # it 'can have a nice walk in the park'
end
