class ProfilController < ApplicationController
  def index
    #render( :controller 'users', :action 'show')
    render( 'devise/registrations/edit')
  end
end
