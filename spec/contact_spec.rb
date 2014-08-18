require 'spec_helper'

describe Contact do
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }

  it "should titleize full names" do
    new_contact = Contact.create({name: 'bob miller', phone: "1234567898"})
    expect(new_contact.name).to eq "Bob Miller"
  end

end
