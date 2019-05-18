class Blog < ApplicationRecord
  #  validates :title, presence: true, length: {maximum: 140}
  #  validates :content, presence: true, length: {maximum: 140}


  validate :add_error
 
  def add_error
    if title.blank?
      errors[:base] << "タイトルを入力してください"
    end
    
    if title.length >= 140
        errors[:base] << "タイトルは140字以内で入力してください"
    end
 
    if content.blank?
      errors[:base] << "本文を入力してください"
    end

    if content.length >= 140
        errors[:base] << "本文は140字以内で入力してください"
    end

  end
  
end
