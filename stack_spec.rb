require_relative 'stack'

describe 'Stack' do
  let(:stack) { Stack.new }
  it 'can create a new stack of 1 element' do
    stack.push(2)
    expect(stack.length).to eq 1
  end

  it 'can push 3 elements' do
    stack.push(2)
    stack.push(5)
    stack.push("yay")
    expect(stack.length).to eq 3
  end

  it 'can remove top of stack' do
    stack.push(2)
    stack.push(5)
    stack.push("yay")
    stack.pop
    expect(stack.top).to eq 5
  end

  it 'can remove top and return' do
    stack.push(2)
    stack.push(5)
    stack.push("yay")
    expect(stack.pop).to eq "yay"
  end

  it 'can return but not remove top of the stack' do
    stack.push(2)
    stack.push(5)
    stack.push("yay")
    stack.top
    expect(stack.top).to eq "yay"
  end

  it 'can check if the stack is empty' do
    expect(stack.empty?).to eq true
  end
end

describe 'RPN calculator' do
  it 'can add 3 4 +' do
    expect(calculate([3, 4, "+"])).to eq 7
  end

  it 'can calculate 5 1 2 + 4 × + 3 −' do
    expect(calculate([5, 1, 2, "+", 4, "x", "+", 3, "-"])).to eq 14
  end
end
  