module Users
  class OmniauthCallbacksController < DeviseTokenAuth::OmniauthCallbacksController
    include Devise::Controllers::Rememberable

    def omniauth_success
      get_resource_from_auth_hash
      create_token_info
      set_token_on_resource
      create_auth_params

      # 使わないのでコメントアウト
      #if resource_class.devise_modules.include?(:confirmable)
      #  # don't send confirmation email!!!
      #  @resource.skip_confirmation!
      #end

      sign_in(:user, @resource, store: false, bypass: false)

      # name、image、role、document、l_priceをupdateしないようにする。
      if @resource.provider=='facebook'
        if @resource.id
          user = User.find(@resource.id)
          @resource.name = user.name
          @resource.image = user.image
          @resource.role = user.role
          @resource.document = user.document
          @resource.l_price = user.l_price
        end

        if @resource.save!
          # update_token_authをつけることでレスポンスヘッダーに認証情報を付与できる。
          update_auth_header
          yield @resource if block_given?
          # render json: @resource, status: :ok
        else
          render json: { message: "failed to login" }, status: 500
        end
      elsif @resource.provider=='stripe_connect'
        stripe_connect
      end

      # これをそのままつかうと304になるので一旦コメントアウト
      # render_data_or_redirect('deliverCredentials', @auth_params.as_json, @resource.as_json)
    end

    protected
    def get_resource_from_auth_hash
      # find or create user by provider and provider uid
      @resource = resource_class.where({
        uid:      auth_hash['uid'],
        provider: auth_hash['provider']
      }).first_or_initialize

      if @resource.new_record?
        @oauth_registration = true
        # これが呼ばれるとエラーになるのでコメントアウトする
        #set_random_password
      end

      # sync user info with provider, update/generate auth token
      assign_provider_attrs(@resource, auth_hash)

      # assign any additional (whitelisted) attributes
      extra_params = whitelisted_params
      @resource.assign_attributes(extra_params) if extra_params

      @resource
    end

    # stripe connectの必要トークンなどをuserをアップデートし保存
    def stripe_connect
      @user = User.find_by(id: 11)
      if @user.update_attributes({
        stripe_uid: auth_hash.uid,
        stripe_access_code: auth_hash.credentials.token,
        stripe_publishable_key: auth_hash.info.stripe_publishable_key
      })
        # anything else you need to do in response..
        # sign_in_and_redirect @user, :event => :authentication
        # set_flash_message(:notice, :success, :kind => "Stripe") if is_navigational_format?
      # else
        # session["devise.stripe_connect_data"] = request.env["omniauth.auth"]
        # redirect_to new_user_registration_url
      end
    end
  end
end