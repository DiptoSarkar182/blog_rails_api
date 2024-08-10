### Authentication Routes
| Prefix                    | Verb   | URI Pattern                      | Controller#Action               |
|---------------------------|--------|----------------------------------|---------------------------------|
| new_user_session          | GET    | /users/sign_in(.:format)         | users/sessions#new              |
| user_session              | POST   | /users/sign_in(.:format)         | users/sessions#create           |
| destroy_user_session      | DELETE | /users/sign_out(.:format)        | users/sessions#destroy          |

### Registration Routes
| Prefix                    | Verb   | URI Pattern                      | Controller#Action               |
|---------------------------|--------|----------------------------------|---------------------------------|
| cancel_user_registration  | GET    | /users/sign_up/cancel(.:format)  | users/registrations#cancel      |
| new_user_registration     | GET    | /users/sign_up/sign_up(.:format) | users/registrations#new         |
| edit_user_registration    | GET    | /users/sign_up/edit(.:format)    | users/registrations#edit        |
| user_registration         | PATCH  | /users/sign_up(.:format)         | users/registrations#update      |
|                           | PUT    | /users/sign_up(.:format)         | users/registrations#update      |
|                           | DELETE | /users/sign_up(.:format)         | users/registrations#destroy     |
|                           | POST   | /users/sign_up(.:format)         | users/registrations#create      |

### User Profile Route
| Prefix                    | Verb   | URI Pattern                      | Controller#Action               |
|---------------------------|--------|----------------------------------|---------------------------------|
| profile_users             | GET    | /users/profile(.:format)         | users#profile                   |

### User Management Routes
| Prefix                    | Verb   | URI Pattern                      | Controller#Action               |
|---------------------------|--------|----------------------------------|---------------------------------|
| users                     | GET    | /users(.:format)                 | users#index                     |
|                           | POST   | /users(.:format)                 | users#create                    |
| user                      | GET    | /users/:id(.:format)             | users#show                      |
|                           | PATCH  | /users/:id(.:format)             | users#update                    |
|                           | PUT    | /users/:id(.:format)             | users#update                    |
|                           | DELETE | /users/:id(.:format)             | users#destroy                   |

Thats all for now.