class Liquid::Renderer
  def self.call()
    ApplicationController.append_view_path Rails.root.join('themes')

    result = ApplicationController.render(
      template: 'default/templates/home',
      layout: 'default/layouts/application',
      assigns: { user: UserDrop.new(@user) }
    )
  end
end
