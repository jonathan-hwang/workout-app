require 'spec_helper'

describe User do
  before { @user = User.new(firstName: "First", lastName: "Last", email: "example@email.com",
                     age: 20, gender: 0) }
                
  subject { @user }
  
  it { should respond_to(:firstName) }
  it { should respond_to(:lastName) }
  it { should respond_to(:email) }
  it { should respond_to(:age) }
  it { should respond_to(:gender) }
end
