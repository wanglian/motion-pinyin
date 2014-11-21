motion-pinyin
=============

Translate chinese hanzi to pinyin.

A RubyMotion wrapper for (https://github.com/flyerhzm/chinese_pinyin).



Install
-------

Add this line to your application's Gemfile:

    gem 'motion-pinyin'

And then execute:

    $ bundle

Usage
-----

    Pinyin.t('中国')  => "zhong guo"
    Pinyin.t('你好world') => "ni hao world"
    Pinyin.t('中国', splitter: '-') => "zhong-guo"
    Pinyin.t('中国', splitter: '') => "zhongguo"
    Pinyin.t('中国', tone: true) => "zhong1 guo2"

Polyphone Issue
---------------

use Words.dat to override default behavior.

by default

    Pinyin.t('广州') => "yan zhou"

add file Words.dat

    广州|guang3 zhou1

set ENV['WORDS_FILE'] for Words.dat

    ENV['WORDS_FILE'] = "Words.dat path"
    Pinyin.t('广州') => "guang zhou"

