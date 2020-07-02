require 'rails_helper'

RSpec.describe Trail, type: :model do
  subject { build(:trail) }

  context 'validations' do
    it 'has a valid factory' do
      expect(build(:trail)).to be_valid
    end

    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_numericality_of(:difficulty).is_less_than(5) }
    # Other syntax that is valid
    #it { should validate_presence_of(:name)}
    #it { is_expected.to validate_presence_of(:name)}
  end
  
  context 'associations' do
    it { expect(subject).to have_many(:facilities).through(:facility_trails) } 
  end
end
