require 'pry'
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
    if status == "pending" 
      binding.pry 
      if sender.balance < amount
        return "Transaction rejected. Please check your account balance."
      else 
        sender.balance -= amount 
        receiver.balance += amount
        status = "complete"
      end
    end 
  end
  
  
end
