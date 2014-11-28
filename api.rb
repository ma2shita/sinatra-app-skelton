module App
  class API < Grape::API
    prefix :api
    format :json

    get :hello do
      { :hello => "Hello! Today is #{Time.now}" }
    end

    params do
      requires :p, :type => Integer
    end
    get :hello2 do
      { :hello => params[:p] }
    end
  end
end

