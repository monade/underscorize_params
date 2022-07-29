require 'spec_helper'

describe PeopleController, type: :controller do
  let(:params_hash) do
    {
      userId: 1,
      firstName: 'John',
      lastName: 'Doe'
    }
  end

  let(:params) do
    ActionController::Parameters.new(params_hash)
  end

  it 'should correctly underscorize all params' do
    allow_any_instance_of(described_class).to receive(:params).and_return(params)
    subject.send :underscore_params!

    expect(params[:user_id]).to eq(1)
    expect(params[:first_name]).to eq('John')
    expect(params[:last_name]).to eq('Doe')

    expect(params[:userId]).to be(nil)
    expect(params[:firstName]).to be(nil)
    expect(params[:lastName]).to be(nil)
  end
end
