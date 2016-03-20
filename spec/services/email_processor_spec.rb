describe EmailProcessor do
  attr_reader :email

  before(:each) do
    @email = build(:email, :with_attachment)
  end

  it "creates a user" do
    expect do
      EmailProcessor.new(email).process
    end.to change { User.count }
  end

  it "creates routines" do
    expect do
      EmailProcessor.new(email).process
    end.to change { Routine.count }
  end

  it "creates workouts" do
    expect do
      EmailProcessor.new(email).process
    end.to change { Workout.count }
  end

  it "creates exercises" do
    expect do
      EmailProcessor.new(email).process
    end.to change { Exercise.count }
  end

  it "creates exercise sets" do
    expect do
      EmailProcessor.new(email).process
    end.to change { ExerciseSet.count }
  end
end
