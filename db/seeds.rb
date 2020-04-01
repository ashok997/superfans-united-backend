user1 =User.create(name:'Ashok Maharjan', email:'ashok@ashok.com')

user2 =User.create(name:'Tony Stark', email:'tony@starkindustries.com')

user3 =User.create(name:'Bruce Banner', email:'bruceakahulk@avengers.com')

character1 =Character.create(name:'Thor (Marvel Heroes)', description:"", thumbnail:'http://i.annihil.us/u/prod/marvel/i/mg/c/20/5239be0b8ecd1', image:'test')

character2 =Character.create(name:'Loki', description:"", thumbnail:'http://i.annihil.us/u/prod/marvel/i/mg/d/90/526547f509313', image:'test2')

usercharacter1 =UserCharacter.create(user_id: '1', comments: 'He is strange!', character_id: '2')

usercharacter2 =UserCharacter.create(user_id: '1', comments: 'Random comment', character_id: '1')

usercharacter3 =UserCharacter.create(user_id: '3', comments: 'Friend from work', character_id: '1')

usercharacter4 =UserCharacter.create(user_id: '3', comments: 'Brother of a friend from work!', character_id: '2')