require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #login' do
    before { get login_path }

    it 'returns http success' do
      expect(response).not_to have_http_status(:success)
    end
    it { should_not render_template('index') }
  end
end
