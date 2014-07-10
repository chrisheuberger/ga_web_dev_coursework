class Lunch

  attr_accessor :lunch_name, :picked_count
  attr_reader :id

  def initialize(options)
    @id = options.fetch('id')
    @lunch_name = options.fetch('lunch_name')
    @picked_count = options.fetch('picked_count')
  end

  def to_s
    "Lunch: #{@lunch_name}. Picked: #{@picked_count}"
  end

  def save_plus_1
    sql_statement = "UPDATE lunches SET lunch_name='#{@lunch_name}', picked_count='#{@picked_count}+1' WHERE id=#{@id};"
    run_sql(sql_statement)
  end

  def run_sql(sql_statement)
    Lunch.run_sql(sql_statement)
  end

  def self.all
    response = run_sql('SELECT * FROM lunches;')
    lunches = response.map do |lunch_row_hash|
      Lunch.new(lunch_row_hash)
    end
    lunches
  end

  def self.run_sql(sql_statement)
    connection = PG.connect(:dbname => 'wdi_lunch')
    response = connection.exec(sql_statement)
    connection.close
    return response
  end

end
