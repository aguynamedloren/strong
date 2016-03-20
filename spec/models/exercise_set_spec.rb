describe ExerciseSet do
  describe "Associations" do
    it { should belong_to(:exercise) }
    it { should belong_to(:workout) }
  end
end
