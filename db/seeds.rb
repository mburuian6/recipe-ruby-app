# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.delete_all
Post.delete_all

users = User.create([
    {
    	email: default@user.com,
    	name: default user,
    	user_name: user,
    	password: password,
    	password_confirmation: password
    }
])

Post.create([
    {
        title: 'super fast salmon and sweet potato fish cakes',
        ingredients: '
        2 small (about 500g) sweet potatoes, unpeeled
        250g fresh breadcrumbs
        1 egg, lightly beaten
        ½ cup (125g) sour cream
        Finely grated zest of 1 lemon, plus extra wedges to serve
        Juice of 1 lemon
        ½ bunch dill, finely chopped
        180g hot-smoked salmon or trout, flaked
        1/3 cup (50g) plain flour
        Sunflower oil, for shallow-frying
        ¼ cup (45g) chopped cornichons
        Watercress, to serve
    ',
        procedure: '
        1.
        Prick sweet potato all over with the tip of a small knife and enclose in plastic wrap.
        2.
        Microwave on high for 10-15 minutes until very tender. 
        Set aside to cool, then halve potatoes and scoop flesh from the skins. 
        Place in a large bowl. Add breadcrumbs, egg, 1 tbs of the sour cream, 
        lemon zest and half the dill, and mix to combine. Season. Fold in salmon, 
        shape fish cake mixture into 12 patties and place in the freezer for 10 minutes.
        3.
        When ready to cook, dust both sides of fish cakes in flour, shaking off excess. 
        Heat 1cm oil in a large fryin pan over medium-high heat and fry fish cakes for 2-3 minutes 
        on each side until golden. Transfer to paper towel to drain.
        4.
        Combine remaining sour cream in a bowl with lemon juice, cornichons and remaining dill. 
        Season. Serve fish cakes with dill sour cream, watercress and lemon wedges. ',
        user: users.first,
        serves: 4
    },

    {
        title: 'easy butter chicken',
        ingredients: '    
        500g skinless boneless chicken thighs

        For the marinade
        
            1 lemon, juiced
            2 tsp ground cumin
            2 tsp paprika
            1-2 tsp hot chilli powder
            200g natural yogurt
        
        For the curry
        
            2 tbsp vegetable oil
            1 large onion, chopped
            3 garlic cloves, crushed
            1 green chilli, deseeded and finely chopped (optional)
            thumb-sized piece ginger, grated
            1 tsp garam masala
            2 tsp ground fenugreek
            3 tbsp tomato purée
            300ml chicken stock
            50g flaked almonds, toasted',
        procedure:'
        STEP 1
        In a medium bowl, mix all the marinade ingredients with some seasoning. 
        Chop the chicken into bite-sized pieces and toss with the marinade. 
        Cover and chill in the fridge for 1 hr or overnight.
        STEP 2
        In a large, heavy saucepan, heat the oil. 
        Add the onion, garlic, green chilli, ginger and some seasoning. 
        Fry on a medium heat for 10 mins or until soft.
        STEP 3
        Add the spices with the tomato purée, cook for a further 2 mins until fragrant, 
        then add the stock and marinated chicken. 
        Cook for 15 mins, then add any remaining marinade left in the bowl. 
        Simmer for 5 mins, then sprinkle with the toasted almonds. 
        Serve with rice, naan bread, chutney, coriander and lime wedges, if you like.
        ',
        user: users.first,
        serves: 4
    }
])



