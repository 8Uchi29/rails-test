class StaticPagesController < ApplicationController
  def home
  end
  # => 何も指定がなければ、この名前に対応するビューを探し出し表示する。
  # app/views/コントローラ名/アクション名

  def help
  end
end
