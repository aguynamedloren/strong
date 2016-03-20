FactoryGirl.define do
  factory :user do
    email "example@example.com"
    password "password"
  end

  factory :email, class: OpenStruct do
    # Assumes Griddler.configure.to is :hash (default)
    to [{ full: "to_user@email.com", email: "to_user@email.com",
      token: "to_user", host: "email.com", name: nil }]
    from({ token: "from_user", host: "email.com", email: "from_email@email.com",
      full: "From User <from_user@email.com>", name: "From User" })
    subject "Workout History for Strong"
    body "Here is your workout history!"
    attachments {[]}

    trait :with_attachment do
      attachments {[
        ActionDispatch::Http::UploadedFile.new({
          filename: "workout-history.csv",
          type: "text/csv",
          tempfile: File.new("#{File.expand_path(File.dirname(__FILE__))}/fixtures/workout-history.csv")
        })
      ]}
    end
  end
end
