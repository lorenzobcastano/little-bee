# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "slim-select" # @2.8.1
pin "bootstrap" # @5.3.2
pin "@popperjs/core", to: "@popperjs--core.js" # @2.11.8
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "fflate" # @0.8.1
pin "dompurify" # @3.0.8
pin "html2canvas" # @1.4.1
pin "jspdf-invoice-template" # @1.4.3
pin "jspdf-autotable" # @3.5.14
pin "@babel/runtime/helpers/asyncToGenerator", to: "@babel--runtime--helpers--asyncToGenerator.js" # @7.23.9
pin "@babel/runtime/helpers/defineProperty", to: "@babel--runtime--helpers--defineProperty.js" # @7.23.9
pin "@babel/runtime/helpers/typeof", to: "@babel--runtime--helpers--typeof.js" # @7.23.9
pin "canvg" # @3.0.10
pin "jspdf" # @2.5.1
pin "async" # @1.5.2
pin "depd" # @1.1.0
pin "process" # @2.0.1
pin "validator" # @4.9.0
