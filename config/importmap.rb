# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js"
pin "datatables.net", to: "https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"
pin_all_from "app/javascript/controllers", under: "controllers"
