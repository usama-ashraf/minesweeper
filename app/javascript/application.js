// app/javascript/application.js
import "@hotwired/turbo-rails";
import "controllers";
import "jquery";
import "datatables.net";

document.addEventListener("turbo:load", () => {
    $("#boards-table").DataTable();
});