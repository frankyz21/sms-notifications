require 'pagy/extras/overflow'

Pagy::DEFAULT[:items] = 5 # items per page
Pagy::DEFAULT[:size]  = [1, 4, 4, 1] # nav bar links
# Better user experience handled automatically
Pagy::DEFAULT[:overflow] = :last_page