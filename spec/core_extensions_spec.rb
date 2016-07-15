require "spec_helper"
 
describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", "", ""].all_empty?).to be true
    end
 
    it "returns false if some of the Array elements are not empty" do
      expect(["", 1, "", "", Object.new, :a].all_empty?).to be false
    end
 
    it "returns true for an empty Array" do
      expect([].all_empty?).to be true
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["X", "X", "X", "X"].all_same?).to be true
    end

    it "returns false if some of the Array elements are not the same" do
      expect(["", 1, "", "", Object.new, :a].all_same?).to be false
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be true
    end
  end

  context "#any_empty?" do
    it "returns true if any elements of the Array is empty" do
      expect(["A", "", "", ""].any_empty?).to be true
    end

    it "returns false for none empty array" do
      expect([1, 1, 1, 1, Object.new, :a].any_empty?).to be false
    end

    it "returns true for an empty Array" do
      expect([nil].any_empty?).to be true
    end
  end

  context "#none_empty?" do
    it "returns true if any elements of the Array is not empty" do
      expect(["A", "1", "A", "A"].none_empty?).to be true
    end

    it "returns false for an empty Array" do
      expect([nil].none_empty?).to be false
    end
  end  

end
