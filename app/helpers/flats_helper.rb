module FlatsHelper
  # http://cobwwweb.com/render-inline-svg-rails-middleman
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/icons/#{name}"
    return File.read(file_path).html_safe if File.exists?(file_path)
    '(not found)'
  end
end
