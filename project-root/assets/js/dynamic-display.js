const navigation = document.getElementById("main-nav");
const urlString = window.location.search;
const urlParams = new URLSearchParams(urlString);

const paramValue = urlParams.get("cat-id");
const sub_category = urlParams.get("sub-cat-id");

if (sub_category) {
  document.getElementById("sub-category-txt").innerHTML = sub_category;
}

let navigationDisplay = "<ul>";
category.forEach((item) => {
  navigationDisplay += `
        <li class="nav-item">
            <a href="${item.link}"  class="nav-link ${
    paramValue == item.category_id ? "active" : ""
  }">${item.name}</a>
        </li>
    `;
});

navigationDisplay += "</ul>";
if (navigation) {
  navigation.innerHTML = navigationDisplay;
  // Ensure nav is visible (some CSS hides nav by default for mobile)
  navigation.classList.add("active");
}

const categoryList = document.getElementById("categoryList");

function toTitleCase(str) {
  return str.replace(
    /\w\S*/g,
    (text) => text.charAt(0).toUpperCase() + text.substring(1).toLowerCase()
  );
}

if (categoryList) {
  document.getElementById("first-breadcrumb").innerText = toTitleCase(
    paramValue.replace("_", " ")
  );
  document.getElementById("pet-dyno").innerText = toTitleCase(
    paramValue.replace("_", " ").toLocaleUpperCase()
  );

  subCategory[paramValue].forEach((subItem) => {
    const subCategoryDisplay = `
            <li>
                <a href="${subItem.link}">${subItem.name}</a>
            </li>
        `;
    categoryList.innerHTML += subCategoryDisplay;
  });
}

const categoryCard = document.getElementById("categoriesGrid");

if (categoryCard) {
  subCategory[paramValue].forEach((subItem) => {
    const subCategoryCardDisplay = `
            <a href="${subItem.link}" class="category-card">
                <div class="title">${subItem.name} test</div>
                <div class="category-image">
                    <img src="${subItem.img}" alt="${subItem.name}">
                </div>
            </a>
        `;
    categoryCard.innerHTML += subCategoryCardDisplay;
  });
}

const categoryTitle = document.getElementById("categoryTitle");
const categoryDescription = document.getElementById("categoryDescription");
const categoryImage = document.getElementById("categoryImage");

if (categoryTitle || categoryDescription) {
  categoryTitle.innerHTML = pageDetails[paramValue].title;
  categoryDescription.innerHTML = pageDetails[paramValue].description;
  categoryImage.innerHTML = `
        <img src="${pageDetails[paramValue].link}" alt="${paramValue} category banner">
    `;
}
