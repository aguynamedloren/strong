module UuidToParam
  extend ActiveSupport::Concern

  def to_param
    uuid
  end
end
