class SessionsController < ApplicationController
    skip_before_action :login_required
    def signup
    end

    def create
        user = User.new(create_params)
        if user.save
            session[:user_id] = user.id
            redirect_to root_path, notice: '登録しました'
        else
            redirect_to signup_path, notice: '登録に失敗しました'
        end
    end

    def new
    end

    def login 

        # 該当するemailアドレスがあるか検索
        user = User.find_by(email: login_params[:email])

        # ユーザーが見つかった場合には、送られてきたパスワードによる認証を行う
        if user&.authenticate(login_params[:password])
            # 認証に成功した場合に、セッションにuser_idを格納
            session[:user_id] = user.id
            # ホームへリダイレクト
            redirect_to root_path, notice: 'ログインしました'
        else
            redirect_to login_path, notice: 'ログインに失敗しました'
        end
    end

    def destroy
        reset_session
        redirect_to root_path, notice: 'ログアウトしました。'
    end

    private

    def create_params
        params.require(:session).permit(:name, :email, :password, :password_confirmation)
    end

    private
    
    def login_params
        params.require(:session).permit(:email, :password)
    end

   
end
