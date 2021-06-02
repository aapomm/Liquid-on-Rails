ActionView::Template.register_template_handler(:liquid, Liquid::TemplateHandler)
Liquid::Template.register_filter(Liquid::Filters::AssetTagFilter)
