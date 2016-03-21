class Order < ActiveRecord::Base
  has_attached_file :document

  validates_attachment_content_type :document, content_type: ['image/jpeg', 'image/png', 'application/pdf'],
    message: "Для загрузки доступны файлы в формате: jpeg, png, pdf. Ваш файл имеет иной формат."

end
