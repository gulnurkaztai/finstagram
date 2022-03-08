users = [
  { username: "mr.sunshine", avatar_url: "https://st.depositphotos.com/1001911/2510/v/950/depositphotos_25102673-stock-illustration-pointing-to-his-eyes-emoticon.jpg", email: "mr.sunshine@gmail.com", password: "abcd" },
  { username: "bob", avatar_url: "https://media.istockphoto.com/vectors/shocked-emoticon-vector-id1222722084", email: "bob@gmail.com", password: "efgh" },
  { username: "marshmallow", avatar_url: "https://st4.depositphotos.com/1001911/20137/v/1600/depositphotos_201375734-stock-illustration-happy-emoticon-looking-away-hand.jpg", email: "marshmallow@gmail.com", password: "ijkl" }
]

finstagram_posts = [
  { photo_url: "https://qph.fs.quoracdn.net/main-qimg-71305f16069c6d93096c6619e6c62c01-lq"},
  { photo_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F06%2F27%2Fwhite-cat-big-eyes-cat-ledge-1127317526-2000.jpg"},
  { photo_url: "https://www.mypetsname.com/wp-content/uploads/2019/10/Cute-Cat-Names-Feature.jpg"}
]

puts "=== Seeding database... ==="

# create Users and FinstagramPosts
users.each_with_index do |user, index|
  # create new User
  user_record = User.create(user)
  puts "-- Created User: #{user_record.username}"
  # get a finstagram_post
  finstagram_post = finstagram_posts[index]
  # modify finstagram_post's user_id from created record
  finstagram_post[:user_id] = user_record.id
  # create new FinstagramPost
  FinstagramPost.create(finstagram_post)
  puts "-- Created a FinstagramPost for User: #{user_record.username}"
end

puts "=== Seeding complete. ==="