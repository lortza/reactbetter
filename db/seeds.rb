# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{name: "Admin", username: "Admin", email: "admin@email.com", admin: true, password: "password", password_digest: "password"}])

Reaction.create!([
  {
    name: "Compassion", 
    explanation: "Imagine yourself as the other person. What kind of pain and bad circumstances would cause you to behave that way? How would you feel if you were in their shoes?", 
    slug: "compassion"
    },
    {
      name: "Forgiveness",
      explanation: "We all make mistakes. Sometimes they're small. Sometimes no-one notices. Other times they're big and ugly. This time, they made a mistake. Give them space or help them sort out the mess. You'll be grateful when someone helps you to clean up your next mistake.", 
      slug: "forgiveness"
      },
      {
        name: "Generosity",
        explanation: "It may sound a little crazy at first, but right now you have the opportunity to be generous. Take a deep breath and think of a way that you can be generous in this situation. What can you give, do, say, or not say that would be helpful to the situation? Figure this out and it's a win-win: you get to feel good about your gift and the situation benefits from your generosity.",
        slug: "generosity"
        },
      {
        name: "Gift in Disguise",
        explanation: "Now that this has happened, what has actually improved in your life? What do you get to do now that the circumstances have changed? ",
        slug: "gift-in-disguise"
      },
      {
        name: "Gratitude",
        explanation: "What about this situation makes you feel grateful for what you already have in life.", 
        slug: "gratitude"
        },
      {
        name: "Learning",
        explanation: "They don't call it 'learning it the hard way' for nothing. What lessons have you just learned? What will you get to do better next time?",
        slug: "learning"
      },
      {
        name: "Letting Go",
        explanation: "Now that this has happened, what do you get to let go of that is no longer serving you? In what ways has this simplified your life?",
        slug: "letting-go"
        },
      {
        name: "Love",
        explanation: "There is always room for more love! Think of just one thing that you love about this person or situation that has upset you. Once you've found that one thing, push yourself to come up with three more.",
        slug: "love"
      },
      {
        name: "New People",
        explanation: "Now that this has happened, what new people have you met? What new people will you get to meet? Who will be the next people to enrich your life?",
        slug: "new-people"
        },
      {
        name: "The Helpers",
        explanation: "In times like this, Fred Rogers reminds us to 'Look for the helpers. You will always find people who are helping.' Take a closer look. Who is helping?",
        slug: "the-helpers"
      },
      {
        name: "They're Right!",
        explanation: "Wait a minute! It feels like you're right. You KNOW you're right. But what if, for just a moment, you considered that 1) you're both right or 2) you're actually totally mistaken. Play the scene over in your head and completely believe their side of the argument is 100% accurate. What can you learn from their point of view?",
        slug: "theyre-right"
      }
  ])
