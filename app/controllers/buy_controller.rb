class BuyController < ApplicationController

  def sale

    @product = params[:product]
    @user = params[:user]

    result_product = checkProduct(@product)
    result_user = checkUser(@user)

    if result_product.include? "stock" and result_user.include? "name"

      options = {
        :body =>
       {
          :user => @user,
          :product => @product
        }.to_json,

        :headers => { 'Content-Type' => 'application/json' }
       }

       results = HTTParty.post("http://192.168.99.101:3000/sales", options )

    end

  end

  def checkProduct(id)

    results = HTTParty.get("http://192.168.99.101:3000/products/" + id.to_s )
    return results
  end

  def checkUser(id)

    results = HTTParty.get("http://192.168.99.101:3000/users/" + id.to_s )
    return results

  end

end
