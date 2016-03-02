SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'

  navigation.items do |primary|
  end
end

SimpleNavigation.register_renderer :first_renderer  => FirstRenderer
SimpleNavigation.register_renderer :second_renderer => SecondRenderer
SimpleNavigation.register_renderer :mobile_menu_renderer => MobileMenuRenderer
