module App
  class API < Grape::API
    prefix :api
    format :json

    get :hello do
      { :hello => "Hello! Today is #{Time.now}" }
    end
  end
end

