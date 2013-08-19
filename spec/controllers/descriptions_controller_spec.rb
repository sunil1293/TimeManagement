require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DescriptionsController do

  # This should return the minimal set of attributes required to create a valid
  # Description. As you add validations to Description, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "status" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DescriptionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all descriptions as @descriptions" do
      description = Description.create! valid_attributes
      get :index, {}, valid_session
      assigns(:descriptions).should eq([description])
    end
  end

  describe "GET show" do
    it "assigns the requested description as @description" do
      description = Description.create! valid_attributes
      get :show, {:id => description.to_param}, valid_session
      assigns(:description).should eq(description)
    end
  end

  describe "GET new" do
    it "assigns a new description as @description" do
      get :new, {}, valid_session
      assigns(:description).should be_a_new(Description)
    end
  end

  describe "GET edit" do
    it "assigns the requested description as @description" do
      description = Description.create! valid_attributes
      get :edit, {:id => description.to_param}, valid_session
      assigns(:description).should eq(description)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Description" do
        expect {
          post :create, {:description => valid_attributes}, valid_session
        }.to change(Description, :count).by(1)
      end

      it "assigns a newly created description as @description" do
        post :create, {:description => valid_attributes}, valid_session
        assigns(:description).should be_a(Description)
        assigns(:description).should be_persisted
      end

      it "redirects to the created description" do
        post :create, {:description => valid_attributes}, valid_session
        response.should redirect_to(Description.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved description as @description" do
        # Trigger the behavior that occurs when invalid params are submitted
        Description.any_instance.stub(:save).and_return(false)
        post :create, {:description => { "status" => "invalid value" }}, valid_session
        assigns(:description).should be_a_new(Description)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Description.any_instance.stub(:save).and_return(false)
        post :create, {:description => { "status" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested description" do
        description = Description.create! valid_attributes
        # Assuming there are no other descriptions in the database, this
        # specifies that the Description created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Description.any_instance.should_receive(:update).with({ "status" => "MyText" })
        put :update, {:id => description.to_param, :description => { "status" => "MyText" }}, valid_session
      end

      it "assigns the requested description as @description" do
        description = Description.create! valid_attributes
        put :update, {:id => description.to_param, :description => valid_attributes}, valid_session
        assigns(:description).should eq(description)
      end

      it "redirects to the description" do
        description = Description.create! valid_attributes
        put :update, {:id => description.to_param, :description => valid_attributes}, valid_session
        response.should redirect_to(description)
      end
    end

    describe "with invalid params" do
      it "assigns the description as @description" do
        description = Description.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Description.any_instance.stub(:save).and_return(false)
        put :update, {:id => description.to_param, :description => { "status" => "invalid value" }}, valid_session
        assigns(:description).should eq(description)
      end

      it "re-renders the 'edit' template" do
        description = Description.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Description.any_instance.stub(:save).and_return(false)
        put :update, {:id => description.to_param, :description => { "status" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested description" do
      description = Description.create! valid_attributes
      expect {
        delete :destroy, {:id => description.to_param}, valid_session
      }.to change(Description, :count).by(-1)
    end

    it "redirects to the descriptions list" do
      description = Description.create! valid_attributes
      delete :destroy, {:id => description.to_param}, valid_session
      response.should redirect_to(descriptions_url)
    end
  end

end
