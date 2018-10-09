alias Server.{Posts, Repo}

mock_photos = 9

photos_list = [
  "https://res.cloudinary.com/bracket-factory/image/upload/v1532452457/wide.jpg",
  "https://res.cloudinary.com/bracket-factory/image/upload/v1532452456/tall.jpg",
  "https://res.cloudinary.com/bracket-factory/image/upload/v1532454234/saga/pexels-photo-1191668.jpg",
  "https://res.cloudinary.com/bracket-factory/image/upload/v1532454234/saga/pexels-photo-996635.jpg",
  "https://res.cloudinary.com/bracket-factory/image/upload/v1532454233/saga/pexels-photo-839773.jpg",
  "https://res.cloudinary.com/bracket-factory/image/upload/v1532454233/saga/pexels-photo-577585.jpg",
  "https://res.cloudinary.com/bracket-factory/image/upload/v1532452456/saga/delicate-arch-night-stars-landscape.jpg",
  "https://res.cloudinary.com/bracket-factory/image/upload/v1532452456/saga/industry-sunrise.jpg",
  "https://res.cloudinary.com/bracket-factory/image/upload/v1528082073/saga/abstract_V04.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2016/08/timber-800x533.jpg"
]

for idx <- 0..mock_photos do
  photo = %{
    image_url: Enum.at(photos_list, idx),
    caption: Faker.Lorem.Shakespeare.hamlet()
  }

  %Posts.Photo{}
  |> Posts.Photo.changeset(photo)
  |> Repo.insert!()
end
