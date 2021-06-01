class Liquid::NonControllerClass
  def self.call()
    ApplicationController.append_view_path Rails.root.join('themes')

    result = ApplicationController.render(
      template: 'templates/home',
      layout: 'layouts/application',
      assigns: { user: UserDrop.new(@user) }
    )
  end
end
