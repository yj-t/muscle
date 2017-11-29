class Menu < ActiveRecord::Base
  enum training_type: { ベンチプレス: 0, スクワット:1, デッドリフト:2, クランチ:3, チンニング:4, ラットプルダウン:5, プッシュアップ:6, インクラインベンチプレス:7}
end
