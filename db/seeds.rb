user1 =User.create(name:'Ashok', email:'ashok@ashok.com')

character1 =Character.create(name:'Thor (Marvel Heroes)', description:"", thumbnail:'http://i.annihil.us/u/prod/marvel/i/mg/c/20/5239be0b8ecd1', image:'test')

character2 =Character.create(name:'Loki', description:"", thumbnail:'http://i.annihil.us/u/prod/marvel/i/mg/d/90/526547f509313', image:'test2')

jointTable1 = UserCharacter.create(comments: 'silly comment', user_id: 1, character_id: 2 )