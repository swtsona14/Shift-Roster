class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :shift_details
  has_one :shift_detail, inverse_of: :user, dependent: :nullify
  # dependent: :restrict_with_exception
  # accepts_nested_attributes_for :shift_detail

  searchable do
    text :name
    text :emp_id
    text :mobile_no
  end
end
