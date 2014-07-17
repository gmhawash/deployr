Deployr::App.controllers :bundle do
  get :index do
    @bundles = Bundle.all
    render 'bundle/index'
  end

  get :new do
    @bundle = Bundle.new
    render 'bundle/new'
  end

  get :edit do
    @bundle = Bundle.new
    render 'bundle/new'
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
