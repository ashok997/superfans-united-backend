user1 =User.create(name:'Ashok', email:'ashok@ashok.com')

character1 =Character.create(name:'Thor', description:'short bio about Thor', thumbnail:'test', image:'test', user_id: 1)

character2 =Character.create(name:'Loki', description:'short bio about Loki', thumbnail:'test2', image:'test2')

jointTable1 = UserCharacter.create(comments: 'silly comment', user_id: 1, character_id: 2 )