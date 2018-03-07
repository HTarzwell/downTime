require 'rails_helper'

RSpec.describe "DowntimeInstances", type: :request do
  describe "GET /downtime_instances" do
    it "works! (now write some real specs)" do
      get downtime_instances_path
      expect(response).to have_http_status(200)
    end
  end
end
