require_relative '../../lib/alpha_sequencer'

# The possible combinations for this are !(26 ^ (n - 1))
# So if you want to see how many possible combinations there are for 3 letters
# you would use the formula (26 ^ 3) + (26 ^ 2) + (26 ^ 1) which equals 18,278.
# That means the greatest number 3 letters can represent would be 18,278. For
# 2 letters you would only be able to represent 702 numbers, so on, and so on.

describe AlphaSequencer do
  subject { AlphaSequencer::Generator.new }

  it "should return an empty string" do
    subject.generate(0).should eq("")
    subject.generate(-1).should eq("")
  end

  it "should return the corresponding alpha character" do
    subject.generate(1).should eq("a")
    subject.generate(26).should eq("z")

    subject.generate(27).should eq("aa")
    subject.generate(702).should eq("zz")

    subject.generate(703).should eq("aaa")
    subject.generate(703).should eq("aaa")

    subject.generate(18278).should eq("zzz")
    subject.generate(18279).should eq("aaaa")
  end
end