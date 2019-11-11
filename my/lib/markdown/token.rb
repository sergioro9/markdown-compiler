class Token
  attr_reader :type, :value

  def initialize(type:, value:)
    @type = type
    @value = value
    raise InvalidTokenError if value.nil? || type.nil?
  end

  def self.null
    NullToken.new
  end

  def self.end_of_file
    Token.new(type: "EOF", value: "")
  end

  def length
    value.length
  end

  def null?
    false
  end

  def present?
    true
  end

  def to_s
    "<type: #{type}, value: #{value}>"
  end
end
