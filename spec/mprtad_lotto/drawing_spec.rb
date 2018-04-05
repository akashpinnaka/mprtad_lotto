require "spec_helper"

module MprtadLotto
  describe Drawing do
    describe "#draw" do
      let(:draw) {MprtadLotto::Drawing.new.draw}

      it "returns an array" do
        expect(draw).to be_a(Array)
      end

      it "returns and array with 5 elements" do
        expect(draw.size).to eq(5)
      end

      it "has all the values as integers" do
        draw.each do |drawing|
          expect(drawing).to be_a(Integer)
        end
      end

      it "has elements with value less than 60" do
        draw.each do |drawing|
          expect(drawing).to be < 60
        end
      end
    end
  end
end