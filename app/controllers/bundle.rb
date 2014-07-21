require 'json'

Deployr::App.controllers :bundle do
  get :index, provides: [:html, :json] do
    @bundles = Bundle.all
    case content_type
    when :html then render 'bundle/index'
    when :json then json @bundles
    end
  end

  get :new do
    @bundle = Bundle.new
    render 'bundle/new'
  end

  get :edit, with: :id do
    @bundle = Bundle.new
    render 'bundle/edit'
  end

  post :create do
    Bundle.create params[:bundle]
    redirect 'bundle'
  end

  post :update do
    Bundle.find params[:bundle][:id]
    redirect 'bundle'
  end
end
