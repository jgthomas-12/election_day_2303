class Race
  attr_reader :office,
              :candidates

  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate)
    new_candidate = { :name => candidate.name, :party => candidate.party }
    @candidates << new_candidate
    new_candidate
  end
end