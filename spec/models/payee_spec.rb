require 'rails_helper'

describe Payee do
  it { should have_db_column :name }
  it { should have_db_column :website }
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :users }
end
