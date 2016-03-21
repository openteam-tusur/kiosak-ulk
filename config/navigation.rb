SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'

  navigation.items do |primary|
    primary.item :permissions, 'Управление правами', manage_permissions_path,
      highlights_on: /\/manage\/permissions/, if: -> { can?(:manage, Permission) }
    primary.item :places, 'Управление аудиториями', manage_places_path,
      highlights_on: /\/manage\/places/, if: -> { can?(:manage, Place) }
    primary.item :places, 'Управление температурой', manage_date_temps_path,
      highlights_on: /\/manage\/date_temps/, if: -> { can?(:manage, DateTemp) }
    primary.item :orders, 'Приказы', manage_orders_path,
      highlights_on: /\/manage\/orders/, if: -> { can?(:manage, Order) }
  end
end

SimpleNavigation.register_renderer :first_renderer  => FirstRenderer
SimpleNavigation.register_renderer :second_renderer => SecondRenderer
SimpleNavigation.register_renderer :mobile_menu_renderer => MobileMenuRenderer
