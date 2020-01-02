class Transfer
  attr_accessor :status 
  attr_reader :sender, :receiver, :amount 
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end 
  
  def execute_transaction
    if self.status == "pending" 
    end 
  end 
end
