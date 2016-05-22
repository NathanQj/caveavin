$(document).ready =>
  appLocation = $("body").attr("class")
  [controller, action] = appLocation.split(' ')

  # console.log "appLocation: " + appLocation
  console.log "controller: " + controller
  # console.log "action: " + action

  new ProductForm() if controller == "products"
  new DegustationForm() if controller == "degustations"
  new UserProductForm() if controller == "user_products"
