require 'spec_helper'

describe HomeController do
  describe "GET /" do
    let(:user) { Fabricate :user }
    let(:label) { Fabricate :label, :name => "a label" }
    let(:label2) { Fabricate :label, :name => 'another label' }
  
    context "when loggin as a user with one associated label" do
      before {
        label.users << user
      }
      it "redirects to the label page" do
        sign_in user
        get :index
        response.should redirect_to(label_path label)
      end
    end

    context "when loggin as a user with several associated labels" do
      render_views
      
      before {
        label.users << user
        label2.users << user
      }
    
      it "renders the label list" do
        sign_in user
        get :index
        response.body.should include('a label')
        response.body.should include('another label')
      end
    end
  end
end
