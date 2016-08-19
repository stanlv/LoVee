Booking.create!([
  {status: "sent", user_id: 1, challenge_id: 1},
  {status: "Sent", user_id: 1, challenge_id: 2},
  {status: "created", user_id: 1, challenge_id: nil}
])
Category.create!([
  {name: "test", picture: "../assets/images/category_test.jpg", coins: 4}
])
Challenge.create!([
  {title: "Challenge", description: "Description", deadline: 1, category_id: 1},
  {title: "test", description: "test", deadline: 20, category_id: 1}
])
User.create!([
  {email: "jlfarinha@hotmail.com", encrypted_password: "$2a$11$gp.AFaDT5IW9EzX3aizhZuqXDdynUQ0XWQGDJckZuR1kc3ir4OB56", reset_password_token: "fdb2c8db2fb819fb5fbff3d8637ed81f433f33fe3552d4d59a54d0fa60f1e5fe", reset_password_sent_at: "2016-08-18 13:41:24", remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2016-08-19 10:39:06", last_sign_in_at: "2016-08-18 16:57:57", current_sign_in_ip: "::1", last_sign_in_ip: "::1", provider: nil, uid: nil, facebook_picture_url: nil, first_name: "Jose", last_name: "Farinha", token: nil, token_expiry: nil, admin: true}
])
