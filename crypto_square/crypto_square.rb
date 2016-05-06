class Crypto
  def initialize(plaintext)
    @plaintext = plaintext
  end

  def normalize_plaintext
    @plaintext.scan(/\w/).join.downcase
  end

  def size
    Math.sqrt(normalize_plaintext.length).ceil
  end

  def plaintext_segments
    normalize_plaintext.scan /.{1,#{size}}/
  end

  def ciphertext
    normalize_ciphertext.gsub " ", ""
  end

  def normalize_ciphertext
    plaintext_segments.each_with_object([]) do |word, result|
      word.chars.each_with_index do |chr, index|
        result[index] = result[index] || []
        result[index] << chr
      end
    end.map(&:join).join(' ')
  end
end
