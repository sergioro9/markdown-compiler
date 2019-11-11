class SimpleScanner
  TOKEN_SCANNERS = {
    '_' => 'UNDERSCORE',
    '*' => 'STAR',
    '\n' => 'NEWLINE'
  }.freeze

  def self.from_string(plain_markdown)
    char = plain_markdown[0]
    Token.new(type: TOKEN_SCANNERS[char], value: char)
  rescue InvalidTokenError
    Token.null
  end
end
