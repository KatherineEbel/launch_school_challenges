# pascals_triangle
class Triangle
  def initialize(rows)
    @starting_rows = [*1..rows].each_with_object([]) do |index, array|
      new_row = Array.new index, 1
      array << new_row
    end
  end

  def rows
    completed_rows = []
    @starting_rows.each_with_index do |row, index|
      if row.size == 1 || row.size == 2
        completed_rows[index] = row
      else
        row.each_with_index do |col, idx|
          if idx == 0
            completed_rows[index] = [col]
          elsif idx == row.size - 1
            completed_rows[index][idx] = col
          else
            completed_rows[index][idx] = completed_rows[index - 1][idx - 1] + completed_rows[index - 1][idx]
          end
        end
      end
    end
    completed_rows
  end
end
