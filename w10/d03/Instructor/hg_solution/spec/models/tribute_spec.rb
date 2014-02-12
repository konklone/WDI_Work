require 'spec_helper'

describe Tribute do
  describe "validations" do
    it { should belong_to(:game) }
    it { should have_and_belong_to_many(:sponsors) }
    it { should have_and_belong_to_many(:rounds) }
    it { should belong_to(:escort) }

    it { should validate_presence_of(:game_id) }
    it { should ensure_inclusion_of(:rating).in_range(1..10) }
  end

  let!(:katniss) { FactoryGirl.create(:tribute, gender: "f") }
  let!(:cato) { FactoryGirl.create(:tribute, gender: "m") }

  describe "#<=>" do
    shared_examples "katniss_is_greater_than_cato" do
      it "is greater than" do
        expect(katniss).to be > cato
      end

      it "is less than" do
        expect(cato).to be < katniss
      end
    end

    context "katniss has a higher rating" do
      before do
        katniss.rating = 10
        cato.rating = 1
      end

      it_should_behave_like "katniss_is_greater_than_cato"
    end

    context "the same rating" do
      before do
        katniss.rating = 5
        cato.rating = 5
      end

      context "katniss has more sponsors" do
        before { katniss.sponsors << FactoryGirl.create(:sponsor) }

        it_should_behave_like "katniss_is_greater_than_cato"
      end

      context "the same number of sponsors" do
        context "lower district" do
          before do
            katniss.district.update(number: 12)
            cato.district.update(number: 5)
          end

          it_should_behave_like "katniss_is_greater_than_cato"
        end

        context "same district" do
          before do
            katniss.district.update(number: 12)
            cato.district.update(number: 12)
          end

          context "one male one female" do
            it_should_behave_like "katniss_is_greater_than_cato"
          end

          context "same gender" do
            before { cato.update(gender: "f") }

            it "randomly generates a winner" do
              expect([-1, 1]).to include(katniss <=> cato)
            end
          end
        end
      end
    end

    it "doesn't override the == method" do
      expect(katniss).to be == Tribute.find_by(id: katniss.id)
    end
  end

  describe "#die!" do
    it "dies" do
      cato.die!
      expect(cato).to be_dead
    end
  end
end