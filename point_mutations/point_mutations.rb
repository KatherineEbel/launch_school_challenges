class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    return 0 if @strand.eql? other_strand
    @strand.chars.take(other_strand.size).each_with_index.select do |char, index|
      char != other_strand[index]
    end.size
  end
end
