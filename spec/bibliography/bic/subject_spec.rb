require 'spec_helper'

describe Bibliography::BIC::Subject do
  context "valid" do
    let(:subject) { Bibliography.subjects.new("AB") }

    describe ".description" do
      it "is a string" do
        expect(subject.description).to eq("The arts: general issues")
      end
    end

    describe ".code" do
      it "is a string, matching the original code" do
        expect(subject.code).to eq("AB")
      end
    end

    describe ".valid?" do
      it "is true" do
        expect(subject.valid?).to eq(true)
      end
    end
  end

  context "invalid" do
    let(:subject) { Bibliography.subjects.new("invalid key") }

    describe ".description" do
      it "is nil" do
        expect(subject.description).to be_nil
      end
    end

    describe ".code" do
      it "is a string matching the original code" do
        expect(subject.code).to be_nil
      end
    end

    describe ".valid?" do
      it "is false" do
        expect(subject.valid?).to eq(false)
      end
    end
  end
end
