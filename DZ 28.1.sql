use `hillel-qauto`;

-- 1. Найти владельцев, в имени которых есть "am"
select * from user_profiles 
where name like '%am%';

-- 2. Найти наибольшую сумму расхода среди автомобилей Audi
select max(expenses.totalCost) as max_total_cost
from expenses
join cars on expenses.carId = cars.id
join car_brands on cars.carBrandId = car_brands.id
where car_brands.title = 'Audi';

-- 3. Найти количество моделей у брендов AUDI и BMW
select count(car_models.id) as count_models, car_models.carBrandId
from car_models
join car_brands on car_models.carBrandId = car_brands.id
where car_brands.title in ('Audi', 'BMW')
group by car_models.carBrandId;

-- 4. Количество владельцев по маркам и моделям авто
select car_models.title as car_model,
car_brands.title as car_brand,
count(distinct cars.userId) as user_count
from cars
join car_models on cars.carModelId = car_models.id
join car_brands on cars.carBrandId = car_brands.id
group by car_models.title, car_brands.title;

-- 5. Имена юзеров, у которых есть машины
select distinct user_profiles.name
from user_profiles
join cars on user_profiles.userId = cars.userId;