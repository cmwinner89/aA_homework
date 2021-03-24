require 'sqlite3'
require 'singleton'

class PlayDBConnection < SQLite3::Database
  include Singleton

  def initialize
    super('plays.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class Play

  def self.find_by_title(title)
    play  = PlayDBConnection.instance.execute(<<-SQL, title)
    SELECT 
      title
    FROM 
      plays
    WHERE 
      title = ?;
    SQL
  end

  def self.find_by_playwright(name)
  playwright = Playwright.find_by_name
  plays = PlayerDBConnection.instance.execute(<<-SQL, playwright_id)
    SELECT
      name
    FROM
      playrights;
  SQL
  end


  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM plays")
    data.map { |datum| Play.new(datum) }
  end

  attr_accessor :id, :title, :year, :playwright_id

  def initialize(options)
    @id = options['id']
    @title = options['title']
    @year = options['year']
    @playwright_id = options['playwright_id']
  end

  def create
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
      INSERT INTO
        plays (title, year, playwright_id)
      VALUES
        (?, ?, ?)
    SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id, self.id)
      UPDATE
        plays
      SET
        title = ?, year = ?, playwright_id = ?
      WHERE
        id = ?
    SQL
  end
end

class Playwright

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
    data.map { |datum| Playwright.new(datum) }
  end

  def self.find_by_name(name)
    <<-SQL
      SELECT 
    SQL
  end

  attr_accessor :title,  :birth_year, :id
  
  def initialize(options)
    @id = options[id]
    @birth_year = options[birth_year]
    @title = options[title]
  end

  def create

  end

  def update

  end

  def get_plays

  end
end
