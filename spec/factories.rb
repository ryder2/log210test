FactoryGirl.define do
    factory :user do
    	name "Yoann123"
    	role_id 1
        email "aabb@hh.de"
        password "ruby123"
        password_confirmation "ruby123"
    end
    factory :user1, parent: :user do
    	name "Yoann123"
    	role_id 4
        email "aabb@hh.de"
        password "ruby123"
        password_confirmation "ruby123"
    end
end