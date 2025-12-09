const category = [
  {
    id: 1,
    name: "Dog",
    category_id: 'dog',
    link: "/grizzlypaws-backend/project-root/pages/category.php?cat-id=dog",
  },
  {
    id: 2,
    name: "Cat",
    category_id: 'cat',
    link: "/grizzlypaws-backend/project-root/pages/category.php?cat-id=cat",
  },
  {
    id: 3,
    name: "Small Pet",
    category_id: 'small_pet',
    link: "/grizzlypaws-backend/project-root/pages/category.php?cat-id=small_pet",
  },
  {
    id: 4,
    name: "Feathered",
    category_id: 'feathered',
    link: "/grizzlypaws-backend/project-root/pages/category.php?cat-id=feathered",
  },
  {
    id: 5,
    name: "Aquatic",
    category_id: 'aquatic',
    link: "/grizzlypaws-backend/project-root/pages/category.php?cat-id=aquatic",
  },
];

const pageDetails = {
  dog: {
    title: "Dog Shop: Dog Supplies & Dog Accessories",
    description: `We offer a wide range of dog food and treats and dog accessories. Here you'll find all brands of <span class="highlight">dog food</span>, <span class="highlight">dog kennels</span>, <span class="highlight">dog beds</span>, <span class="highlight">dog leads</span>, <span class="highlight">dog training equipment</span>, and much more.`,
    link: "/grizzlypaws-backend/project-root/assets/images/category-images/dog_banner.png",
  },
  cat: {
    title: "Cat Shop: Cat Supplies & Cat Accessories",
    description: ` We offer a wide range of cat food, treats, and accessories. Here you'll find all brands of <span class="highlight">cat food</span>, <span class="highlight">cat litter</span>, <span class="highlight">cat beds</span>, <span class="highlight">cat toys</span>, <span class="highlight">cat scratching posts</span>, and much more.`,
    link: "/grizzlypaws-backend/project-root/assets/images/category-images/cat_banner.png",
  },
  small_pet: {
    title: "Small Pet Shop: Supplies & Accessories (Coming Soon)",
    description: `We offer a wide range of products for small pets. Shop <span class="highlight">small pet food</span>, <span class="highlight">cages and enclosures</span>, <span class="highlight">bedding</span>, <span class="highlight">toys</span>, and <span class="highlight">grooming essentials</span> to keep your small companions happy and healthy.`,
    link: "/grizzlypaws-backend/project-root/assets/images/category-images/small_pet_banner.png",
  },
  feathered: {
    title: "Bird Shop: Bird Supplies & Accessories",
    description: `We offer a variety of products for your feathered friends. Explore our range of <span class="highlight">bird food</span>, <span class="highlight">bird cages</span>, <span class="highlight">perches</span>, <span class="highlight">toys for birds</span>, <span class="highlight">bird baths</span>, and much more to keep your pet birds healthy and happy.`,
    link: "/grizzlypaws-backend/project-root/assets/images/category-images/feathered_banner.png",
  },
  aquatic: {
    title: "Aquatic Shop: Fish Supplies & Accessories",
    description: `Explore our wide selection of products for aquatic pets. From <span class="highlight">fish food</span> and <span class="highlight">aquariums</span> to <span class="highlight">filters</span>, <span class="highlight">water care</span>, and <span class="highlight">aquarium decorations</span>, we have everything you need to keep your underwater world thriving.`,
    link: "/grizzlypaws-backend/project-root/assets/images/category-images/aquatic_banner.png",
  },
};

const subCategory = {
  dog: [
    {
      link: "/grizzlypaws-backend/project-root/index.php?sub-cat-id=Dry Dog Food&cat-id=dog",
      id: 1,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dry Dog Food.jpeg",
      name: "Dry Dog Food",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Wet Dog Food&cat-id=dog",
      id: 2,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Wet Dog Food.jpeg",
      name: "Wet Dog Food",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dog Treats&cat-id=dog",
      id: 3,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dog Treats.jpeg",
      name: "Dog Treats",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dog Supplements&cat-id=dog",
      id: 4,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dog Supplements.jpeg",
      name: "Dog Supplements",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dog Grooming&cat-id=dog",
      id: 5,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dog Grooming.jpeg",
      name: "Dog Grooming",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dog Bowls&cat-id=dog",
      id: 6,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dog Bowls.jpeg",
      name: "Dog Bowls",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dog Clothing&cat-id=dog",
      id: 7,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dog Clothing.jpeg",
      name: "Dog Clothing",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dog Toys&cat-id=dog",
      id: 8,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dog Toys.jpeg",
      name: "Dog Toys",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dog Crates&cat-id=dog",
      id: 9,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dog Crates.jpeg",
      name: "Dog Crates",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dog Leads&cat-id=dog",
      id: 10,
      img: "/grizzlypaws-backend/project-root/assets/images/dog-category/Dog Leads.jpeg",
      name: "Dog Leads",
    },
  ],
  cat: [
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Dry Cat Food&cat-id=cat",
      id: 1,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Dry Cat Food.jpeg",
      name: "Dry Cat Food",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Wet Cat Food&cat-id=cat",
      id: 2,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Wet Cat Food.jpeg",
      name: "Wet Cat Food",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cat Treats&cat-id=cat",
      id: 3,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Cat Treats.jpeg",
      name: "Cat Treats",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cat Toys&cat-id=cat",
      id: 4,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Cat Toys.jpeg",
      name: "Cat Toys",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cat Beds&cat-id=cat",
      id: 5,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Cat Beds.jpeg",
      name: "Cat Beds",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cat Litter&cat-id=cat",
      id: 6,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Cat Litter.jpeg",
      name: "Cat Litter",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cat Grooming&cat-id=cat",
      id: 7,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Cat Grooming.jpeg",
      name: "Cat Grooming",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cat Health&cat-id=cat",
      id: 8,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Cat Health.jpeg",
      name: "Cat Health",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cat Scratchers&cat-id=cat",
      id: 9,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Cat Scratchers.jpeg",
      name: "Cat Scratchers",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cat Accessories&cat-id=cat",
      id: 10,
      img: "/grizzlypaws-backend/project-root/assets/images/cat-category/Cat Accessories.jpeg",
      name: "Cat Accessories",
    },
  ],

  small_pet: [
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Small Pet Cages&cat-id=small_pet",
      id: 1,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Small Pet Cages.jpeg",
      name: "Small Pet Cages",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Rabbit&cat-id=small_pet",
      id: 2,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Rabbit.jpeg",
      name: "Rabbit",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Fencing for Small Pets&cat-id=small_pet",
      id: 3,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Fencing for Small Pets.jpeg",
      name: "Fencing for Small Pets",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Small Pet Food&cat-id=small_pet",
      id: 4,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Small Pet Food.jpeg",
      name: "Small Pet Food",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Cage Accessories&cat-id=small_pet",
      id: 5,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Cage Accessories.jpeg",
      name: "Cage Accessories",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Snacks and Supplements&cat-id=small_pet",
      id: 6,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Snacks and Supplements.jpeg",
      name: "Snacks and Supplements",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Hay and Straw&cat-id=small_pet",
      id: 7,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Hay and Straw.jpeg",
      name: "Hay and Straw",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Small Pet Toys&cat-id=small_pet",
      id: 8,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Small Pet Toys.jpeg",
      name: "Small Pet Toys",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Care and Grooming&cat-id=small_pet",
      id: 9,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Care and Grooming.jpeg",
      name: "Care and Grooming",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Small Pet Special Offers&cat-id=small_pet",
      id: 10,
      img: "/grizzlypaws-backend/project-root/assets/images/small-pets-category/Small Pet Special Offers.jpeg",
      name: "Small Pet Special Offers",
    },
  ],

  feathered: [
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Bird Foods&cat-id=feathered",
      id: 1,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Bird Foods.jpeg",
      name: "Bird Foods",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Bird Cages&cat-id=feathered",
      id: 2,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Bird Cages.jpeg",
      name: "Bird Cages",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Bird Cage Accessories&cat-id=feathered",
      id: 3,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Bird Cage Accessories.jpeg",
      name: "Bird Cage Accessories",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Bird Snack&cat-id=feathered",
      id: 4,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Bird Snacks.jpeg",
      name: "Bird Snacks",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Bird Toys&cat-id=feathered",
      id: 4,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Bird Toys.jpeg",
      name: "Bird Toys",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Bird Health&cat-id=feathered",
      id: 6,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Bird Health.jpeg",
      name: "Bird Health",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Bird Cage Bedding &cat-id=feathered",
      id: 7,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Bird Cage Bedding.jpeg",
      name: "Bird Cage Bedding",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Wild Birds&cat-id=feathered",
      id: 8,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Wild Birds.jpeg",
      name: "Wild Birds",
    },
    {
      link: "#",
      id: 9,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Feeding Supplies.jpeg",
      name: "Feeding Supplies",
    },
    {
      link: "#",
      id: 10,
      img: "/grizzlypaws-backend/project-root/assets/images/bird-category/Special Offers.jpeg",
      name: "Special Offers",
    },  
  ],

  aquatic: [
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Aquarium Sand&cat-id=aquatic",
      id: 1,
      img: "/grizzlypaws-backend/project-root/assets/images/fish-category/Aquarium Sand.webp",
      name: "Aquarium Sand",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Fish Tanks&cat-id=aquatic",
      id: 2,
      img: "/grizzlypaws-backend/project-root/assets/images/fish-category/Fish Tanks.jpg",
      name: "Fish Tanks",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Aquarium Filters&cat-id=aquatic",
      id: 3,
      img: "/grizzlypaws-backend/project-root/assets/images/fish-category/Aquarium Filters.jpg",
      name: "Aquarium Filters",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Fish Food&cat-id=aquatic",
      id: 4,
      img: "/grizzlypaws-backend/project-root/assets/images/fish-category/Fish Food.jpg",
      name: "Fish Food",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Aquarium Decorations&cat-id=aquatic",
      id: 5,
      img: "/grizzlypaws-backend/project-root/assets/images/fish-category/Aquarium Decorations.jpg",
      name: "Aquarium Decorations",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Aquarium Lighting&cat-id=aquatic",
      id: 6,
      img: "/grizzlypaws-backend/project-root/assets/images/fish-category/aquarium light.jpg",
      name: "Aquarium Lighting",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Fish Health&cat-id=aquatic",
      id: 7,
      img: "/grizzlypaws-backend/project-root/assets/images/fish-category/Fish Health.jpg",
      name: "Fish Health",
    },
    {
      link: "/grizzlypaws-backend/project-root/pages/subcategory.php?sub-cat-id=Aquarium Maintenance&cat-id=aquatic",
      id: 8,
      img: "/grizzlypaws-backend/project-root/assets/images/fish-category/Aquarium Maintenance.jpg",
      name: "Aquarium Maintenance",
    }
  ],


};
