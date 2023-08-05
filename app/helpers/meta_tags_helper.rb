# frozen_string_literal: true

module MetaTagsHelper
  # rubocop:disable Metrics/MethodLength
  def default_meta_tags
    {
      site: 'Ruby学習をサポートする Rubyフラッシュカード',
      reverse: true,
      charset: 'utf-8',
      description: 'Rubyフラッシュカードはあなたのプログラミング学習を支えるパートナーです！',
      keywords: 'プログラミング, Ruby, フラッシュカード, フィヨルドブートキャンプ, FJORD BOOT CAMP',
      viewport: 'width=device-width, initial-scale=1.0',
      og: {
        title: :title,
        type: 'website',
        site_name: 'Ruby FlashCard',
        description: :description,
        image: image_url('ogp.png'),
        url: request.original_url,
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        url: request.original_url,
        description: :description,
        image: image_url('ogp.png')
      }
    }
  end
  # rubocop:enable Metrics/MethodLength

  def welcome_meta_tags
    default_meta_tags.deep_merge({
                                   title:,
                                   og: {
                                     title: title || 'Ruby FlashCard'
                                   },
                                   twitter: {
                                     title: title || 'Ruby FlashCard'
                                   }
                                 })
  end
end
