class Textile < ApplicationRecord
	belongs_to :category
	attachment :image

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Textile.where(['title LIKE ?', "%#{search}%"])
    else
      Textile.all
    end
  end

end


