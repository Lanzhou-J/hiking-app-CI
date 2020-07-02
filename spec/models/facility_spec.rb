require 'rails_helper'

RSpec.describe Facility, type: :model do
  subject { build(:facility) }
  context 'validations' do
    it 'has a valid factory' do
      expect(build(:facility)).to be_valid
    end

    it { expect(subject).to validate_presence_of(:name) }
  end

  context 'association' do
    it { expect(subject).to have_many(:trails).through(:facility_trails) }
  end
end
