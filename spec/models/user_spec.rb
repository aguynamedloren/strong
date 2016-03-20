describe User do
  describe "Associations" do
    it { should have_many(:exercises) }
    it { should have_many(:routines) }
  end
end
