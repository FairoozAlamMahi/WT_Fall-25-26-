let familyBtn = document.getElementById("familyBtn");
let sportsBtn = document.getElementById("sportsBtn");

let family = document.getElementById("family");
let sports = document.getElementById("sports");

familyBtn.onclick = function () {
    family.style.display = "block";
    sports.style.display = "none";
}

sportsBtn.onclick = function () {
    family.style.display = "none";
    sports.style.display = "block";
}
