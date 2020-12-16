class Person
  attr_accessor :name, :gender, :group, :email, :santa

  def initialize(attrs)
    self.name  = attrs["name"]
    self.gender  = attrs["gender"]
    self.group = attrs["group"]
    self.email = attrs["email"]
  end

  def can_be_santa_of?(other)
    group != other.group
  end

  def can_swap_santas_with?(other)
    santa.can_be_santa_of?(other) && other.santa.can_be_santa_of?(self)
  end

  def to_s
    "#{name}"
  end

  def with_santa
    "#{santa} gives to #{self}"
  end

end
