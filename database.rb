class Database
  def initialize
    @@data ||= {}
  end

  def insert_request(account, params)
    @@data[account] ||= []
    @@data[account] << params
  end

  def requests(account)
    @@data[account]
  end

  def clear
    @@data = {}
  end
end
