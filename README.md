# <center> EVENTCULATOR
## <center> an event budget planning app

[link to TRELLO](https://trello.com/b/EvoTMptu/project4simmy)

```
*
```

---
<center><img src="http://234v6f3f0tjn3jq4mv5l5ih5lc.wpengine.netdna-cdn.com/wp-content/themes/Feasts_of_Fancy_v1/img/aboutvenue.png">

###<center>A TO DO LIST CALCULATOR for an  Event Planning Budget

### <center> User Stories
---

#### The user can see how purchases immediatley effect the budget. for an event that he/she is planning by just adding items the user will be needing for the event.


### <center> Features
---

#### 1. User can enter project name, event, budget.

#### 2. The budget $number will always appear.
#### 3. The can user can add items for purchase.
#### Each item will have details
####a.- how many, b.-  price, c.- photo url, d.- contact info,
#### Total Cost should appear for each item.

#### 4. The user can
####create add update and delete item purchases
####5. and the budget $number will appear updated
####(decrease/increase) as a constant reminder.
---
###ERD
##planners

| keys | values |
| ------ | ----------- |
| id  | INTEGER PRIMARY KEY |
| name | VARCHAR |
| event| VARCHAR |
| budget| FLOAT |

##budgets

| keys | values |
| ------ | ----------- |
| id  | INTEGER |
| planner_id | INTEGER |
| item | VARCHAR |
| no_item | INTEGER |
| price | FLOAT |
| photo_url | TEXT |
| website_add | TEXT |
| contact_info | TEXT |

---

```
'/index page'
```

<center><img src="Screen Shot 2015-06-04 at 1.08.20 PM.png" width='800'>



```
'/event page'
```


<center><img src="Screen Shot 2015-06-04 at 1.08.26 PM.png" width='800'>



```
'/eventID page'
```  

<center><img src="Screen Shot 2015-06-04 at 1.08.29 PM.png" width='800'>



```
'/eventID page'
```

<center><img src="Screen Shot 2015-06-04 at 1.08.33 PM.png" width='800'>




```
*
```

<center><img src="Screen Shot 2015-06-04 at 1.08.36 PM.png" width='800'>



```
'/event id page'
```
<center><img src="Screen Shot 2015-06-04 at 1.08.42 PM.png" width='800'>



```
'/event id page'
```
<center><img src="Screen Shot 2015-06-04 at 1.08.45 PM.png" width='800'>



```
'/event id page'
```
<center><img src="Screen Shot 2015-06-04 at 1.08.47 PM.png" width='800'>



```
'/event id page'
```
<center><img src="Screen Shot 2015-06-04 at 1.08.50 PM.png" width='800'>



```
'/event id page'
```

<center><img src="Screen Shot 2015-06-04 at 1.08.52 PM.png" width='800'>



```
*
```
