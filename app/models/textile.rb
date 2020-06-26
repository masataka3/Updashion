class Textile < ApplicationRecord

	mount_uploader :image, ImageUploader

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Textile.where(['title LIKE ?', "%#{search}%"])
    else
      Textile.all
    end
  end

end


