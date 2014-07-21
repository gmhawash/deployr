require 'byebug'
class Bundle < Sequel::Model

  def to_json(_)
    values.to_json
  end
end
