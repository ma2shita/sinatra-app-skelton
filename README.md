Sinatra App Skelton Package (2014)
==================================

Web/APIなSinatraアプリをすぐに作り始めることができるパッケージ

Rubyは2.0.0以上です

* 開発: Webは[Slim](http://slim-lang.com/) + [Sass](http://sass-lang.com/)、APIは[Grape](http://intridea.github.io/grape/)
* デバッグ: Pry関係
* テスト: RSpec + [timecop](https://github.com/travisjeffery/timecop)(固定日付テスト) + [RSpec HTML matchers](https://github.com/kucaahbe/rspec-html-matchers)
* 環境: Guard + Shotgun, Livereload (要:ブラウザに[LiveReload Extension](http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-)のインストール)

いちいちウルサイfavicon.ico Not Foundにも対応済(とりあえずなfavicon.icoが置いてあります)

DB環境、デザイン用フレームワークは入っていません。DBは[Sequel](http://sequel.jeremyevans.net/)や[ActiveRecord](https://github.com/rails/rails/tree/master/activerecord)と[database\_cleaner](https://github.com/DatabaseCleaner/database_cleaner)、デザインは[Sinatra TwitterBootstrap](https://github.com/ma2shita/sinatra-twitter-bootstrap/tree/versioning_feature)はどうでしょうか

Quick Start
-----------

```
$ git clone  APP
$ cd APP
$ rm -rf .git
$ bundle install --path vendor/bundle
$ bundle exec rake spec
$ bundle exec guard -i
```

Access to http://localhost:3001 it's awesome !!


Operation
---------

```
Server:
$ bundle exec guard -i

Test:
$ bundle exec rake spec
```

EoT

