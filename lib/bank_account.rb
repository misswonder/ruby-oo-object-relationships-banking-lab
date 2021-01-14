require 'pry'

class BankAccount

    attr_reader :name
    attr_accessor :balance, :status, :deposit

    def initialize(name)
        @name = name
        @balance = 1000
        @status = 'open'
    end

    def deposit(deposit) 
        @deposit = deposit   
        #binding.pry
        @balance += @deposit
        #binding.pry 
    end 

    def display_balance
        "Your balance is $#{self.balance}."
    end 

    def valid?
        if @status == 'open' && @balance > 0
            return true
        else
            return false
        end 
    end 

    def close_account
        if @status == 'open' 
        self.status = 'closed'
        end 
    end 

end

