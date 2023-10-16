Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'  # Adjust this if you want to specify which domains can access your API
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end