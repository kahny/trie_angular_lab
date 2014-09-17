Rails.application.routes.draw do

  root 'words#index'
  resources :words, except: [:edit, :new]
  resources :words_templates
  end
