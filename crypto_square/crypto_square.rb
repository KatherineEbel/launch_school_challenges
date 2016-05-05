require 'pry'

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
    binding.pry
  end
end

crypto = Crypto.new('Time is an illusion. Lunchtime doubly so.')

crypto.ciphertext

