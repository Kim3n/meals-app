# meals_app

Simple meals app.

This app had some requirements:

- It should have different categories listed which should contain dishes related to that category. Example: Category: 'Quick and Easy' could contain 'Simple salad'
- There should be a side drawer with a button to go to meals and button to go to filters page.
- User should be able to filter dishes based on their dietary preference like Vegan, Vegitarian, Lactose-free and Gluten-free.
- Bottom bar which lets you go between the category screen and favourites screen.
- User should be able to mark dishes as favourite and these dishes should be displayed on the favourites screen. They can also be removed by pressing favourites again.
- Opening the meal screen should show the ingredients of each meal and steps to prepare it. Also have a button to add to favourites.


## Class Diagram

![Class diagram](https://raw.githubusercontent.com/Kim3n/meals-app/main/classdiagram.png)

## Enhanced Functionality

My addition was the ability to change between languages.
I have a switcher in the drawer that let's you pack EN or NO for language.
That switcher uses a provider to send a bool to the dummydata provider to change which dummydata it returns, one is Norweigan and the other is English.
I later learnt that there is a package for easy translation which could be used, it would have been a better solution and using that the UI would change too.

## Learning from the other person related to the assignment and their style of working?

We both got the same assignment but we both came up with different extra additions and solutions to solve it.
I learnt a lot from looking at their solution and I was informed about packages that could be used to improve my solution.

## Review of other students code

The review on classmate's code can be found here: https://github.com/Molnes/meals/pull/1
