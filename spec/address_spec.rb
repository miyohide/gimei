# -*- coding: utf-8 -*-
require_relative 'spec_helper'

describe Gimei do
  describe '.kanji_prefectural' do
    before { @kanji_prefectural = Gimei.kanji_prefectural }
    it '全角文字が返ること' do
      @kanji_prefectural.must_match /\A[#{Moji.zen}]+\z/
    end
  end

  describe '.kanji_city' do
    before { @kanji_city = Gimei.kanji_city }
    it '全角文字が返ること' do
      @kanji_city.must_match /\A[#{Moji.zen}]+\z/
    end
  end

  describe '.kanji_address' do
    before { @kanji_address = Gimei.kanji_address }
    it '全角文字とスペースが返ること' do
      @kanji_address.must_match /\A[#{Moji.zen}\s]+\z/
    end
  end

  describe '.hiragana_address' do
    before { @hiragana_address = Gimei.hiragana_address }
    it 'ひらがなとスペースが返ること' do
      @hiragana_address.must_match /\A[\p{hiragana}\s]+\z/
    end
  end

  describe '.katakana_address' do
    before { @katakana_address = Gimei.katakana_address }
    it 'カタカナとスペースが返ること' do
      @katakana_address.must_match /\A[\p{katakana}\s]+\z/
    end
  end
end
