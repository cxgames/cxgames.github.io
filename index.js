const inputfield = document.getElementById("searcher");
const filterfield = document.getElementById("platformfilter");
const container = document.querySelectorAll("#masonry-container > *");

function searchGames(search_string) {
    container.forEach(element => {
        element.classList.add("search_hidden");
    });
    containermap = {};
    container.forEach(element => {
        containermap[element.getAttribute("g_name")] = element;
    });
    searcher = new FuzzySearch(Object.keys(containermap));
    results = searcher.search(search_string);
    results.forEach(element => {
        obj = containermap[element];
        obj.classList.remove("search_hidden");
    });
}
function searchInput(_e) {
    text = inputfield.value;
    if (text == "") {
        container.forEach(element => {
            element.classList.remove("search_hidden");
        });
    } else {
        searchGames(text);
    }
}
function filterInput(_e) {
    filterer = filterfield.value;
    if (filterer === "nil") {
        container.forEach(element => {
            element.classList.remove("platform_hidden");
        });
        return;
    }
    container.forEach(element => {
        element.classList.add("platform_hidden");
    });
    container.forEach(element => {
        if (filterer === element.getAttribute("g_platform")) {
            element.classList.remove("platform_hidden");
        }
    });
}

inputfield.addEventListener("input", searchInput);
filterfield.addEventListener("change", filterInput);