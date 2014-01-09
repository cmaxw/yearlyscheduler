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

describe LabelColorsController do

  # This should return the minimal set of attributes required to create a valid
  # LabelColor. As you add validations to LabelColor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LabelColorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all label_colors as @label_colors" do
      label_color = LabelColor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:label_colors).should eq([label_color])
    end
  end

  describe "GET show" do
    it "assigns the requested label_color as @label_color" do
      label_color = LabelColor.create! valid_attributes
      get :show, {:id => label_color.to_param}, valid_session
      assigns(:label_color).should eq(label_color)
    end
  end

  describe "GET new" do
    it "assigns a new label_color as @label_color" do
      get :new, {}, valid_session
      assigns(:label_color).should be_a_new(LabelColor)
    end
  end

  describe "GET edit" do
    it "assigns the requested label_color as @label_color" do
      label_color = LabelColor.create! valid_attributes
      get :edit, {:id => label_color.to_param}, valid_session
      assigns(:label_color).should eq(label_color)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LabelColor" do
        expect {
          post :create, {:label_color => valid_attributes}, valid_session
        }.to change(LabelColor, :count).by(1)
      end

      it "assigns a newly created label_color as @label_color" do
        post :create, {:label_color => valid_attributes}, valid_session
        assigns(:label_color).should be_a(LabelColor)
        assigns(:label_color).should be_persisted
      end

      it "redirects to the created label_color" do
        post :create, {:label_color => valid_attributes}, valid_session
        response.should redirect_to(LabelColor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved label_color as @label_color" do
        # Trigger the behavior that occurs when invalid params are submitted
        LabelColor.any_instance.stub(:save).and_return(false)
        post :create, {:label_color => { "name" => "invalid value" }}, valid_session
        assigns(:label_color).should be_a_new(LabelColor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LabelColor.any_instance.stub(:save).and_return(false)
        post :create, {:label_color => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested label_color" do
        label_color = LabelColor.create! valid_attributes
        # Assuming there are no other label_colors in the database, this
        # specifies that the LabelColor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LabelColor.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => label_color.to_param, :label_color => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested label_color as @label_color" do
        label_color = LabelColor.create! valid_attributes
        put :update, {:id => label_color.to_param, :label_color => valid_attributes}, valid_session
        assigns(:label_color).should eq(label_color)
      end

      it "redirects to the label_color" do
        label_color = LabelColor.create! valid_attributes
        put :update, {:id => label_color.to_param, :label_color => valid_attributes}, valid_session
        response.should redirect_to(label_color)
      end
    end

    describe "with invalid params" do
      it "assigns the label_color as @label_color" do
        label_color = LabelColor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LabelColor.any_instance.stub(:save).and_return(false)
        put :update, {:id => label_color.to_param, :label_color => { "name" => "invalid value" }}, valid_session
        assigns(:label_color).should eq(label_color)
      end

      it "re-renders the 'edit' template" do
        label_color = LabelColor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LabelColor.any_instance.stub(:save).and_return(false)
        put :update, {:id => label_color.to_param, :label_color => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested label_color" do
      label_color = LabelColor.create! valid_attributes
      expect {
        delete :destroy, {:id => label_color.to_param}, valid_session
      }.to change(LabelColor, :count).by(-1)
    end

    it "redirects to the label_colors list" do
      label_color = LabelColor.create! valid_attributes
      delete :destroy, {:id => label_color.to_param}, valid_session
      response.should redirect_to(label_colors_url)
    end
  end

end