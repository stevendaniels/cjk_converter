CJK Converter: a romanization converter for CJK languages.
====================================

## DESCRIPTION

A CJK (Chinese, Japanese, and Korean) romanization converter for CJK languages.

CJK Converter extends the String class with various convenience
functions.

##INSTALLATION

Install as a gem

    $ [sudo] gem install cjk_converter

## Usage

Converting Pinyin with numbered tone marks to properly formatted pinyin
(e.g. "ni3 hao3" => "nǐ hǎo"

    pinyin_with_numbers = "ni3 hao3"
    pinyin = CJKConverter::Pinyin.convert pinyin_with_numbers
    puts pinyin #=> "nǐ hǎo"
