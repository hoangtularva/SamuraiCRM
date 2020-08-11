Samurai::Core::Engine.routes.draw do
    scope module: 'tasks' do
        resources :tasks
    end
end