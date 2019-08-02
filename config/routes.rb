# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'individuals#new'
  resources :individuals, only: %i[index new create]
end
