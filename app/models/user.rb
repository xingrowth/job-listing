class User < ApplicationRecord

  def admin?
     is_admin
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

      def admin?
        email == 'xdite@growth.school'
      end
end
