# config/initializers/swagger.rb
Swagger::Docs::Config.register_apis(
'1.0' => {
    controller_base_path: '',
    api_file_path: 'public/apidocs/', 
    base_path: 'http://localhost:3000',
    parent_controller: ActionController::Base,
    clean_directory: true,
    attributes: {
    info: {
        title: "Library Manager",
        description: "Application to manage library"
    }
    }
}
)

