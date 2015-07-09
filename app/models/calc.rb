class Calc 

  def self.operand name, value
    calculate(name) do
      @operator ? @operand.send(@operator, value) : (@operand = value; self)
    end
  end

  def self.operator name, value
    calculate(name) do
      @operator = value; self
    end
  end

  operand :zero, 0
  operand :one, 1
  operand :two, 2
  operand :three, 3
  operand :four, 4
  operand :five, 5
  operand :six, 6
  operand :seven, 7
  operand :eight, 8
  operand :nine, 9

  operator :plus, :+
  operator :minus, :-
  operator :divided_by, :/
  operator :times, :*
end

