document.addEventListener("DOMContentLoaded", function () {

    const searchInput = document.getElementById("search_input");
    const searchBtn = document.getElementById("search_btn");
    const cards = document.querySelectorAll(".listing-card");

    function filterCars() {
        const keyword = searchInput.value.toLowerCase();

        cards.forEach(card => {
            const nameElement = card.querySelector(".car_name");
            const carName = nameElement.getAttribute("data-name");

            if (carName.includes(keyword)) {
                card.style.display = "block";
            } else {
                card.style.display = "none";
            }
        });
    }

    searchBtn.addEventListener("click", filterCars);

    // Optional: live search while typing
    searchInput.addEventListener("keyup", filterCars);

});
