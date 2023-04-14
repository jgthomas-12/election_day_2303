require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  before(:each) do
    @race = Race.new("Texas Governor")
    @diana = Candidate.new({name: "Diana D", party: :democrat})
  end

  describe "Initialize" do
    it "exists" do
      expect(@race).to be_a(Race)
    end

    it "has attributes" do
      expect(@race.office).to eq("Texas Governor")
      expect(@race.candidates).to eq([])

    end
  end

  describe "#register_candidate!" do
    # it "adds candidate to @candidates" do
    #   @race.register_candidate!(@diana)
    #   expect(@race.candidates).to eq([@diana])
    # end

    it "returns the candidate details" do
      expect(@race.register_candidate!(@diana)).to eq({name: "Diana D", party: :democrat})
    end

    it "does the things" do
      @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
      expect(@candidate1.class).to eq(Candidate)
      expect(@candidate1.name).to eq("Diana D")
    end

  end
end


# @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
# => #<Candidate:0x00007f9edf376c90...>

# @candidate1.class
# => Candidate

# @candidate1.name
# => "Diana D"

# @candidate1.party
# => :democrat

# @candidate2 = @race.register_candidate!({name: "Roberto R", party: :republican})
# => #<Candidate:0x00007f9edf386780...>

# @race.candidates
# => [#<Candidate:0x00007f9edf376c90...>, #<Candidate:0x00007f9edf386780...>]