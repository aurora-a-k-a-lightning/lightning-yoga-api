# lightning yoga API

_**base url:**_ `https://lightning-yoga-api.herokuapp.com/`

---

## endpoints
```                   
/yoga_poses       
/yoga_poses/:id
/yoga_categories
/yoga_categories/:id
```

_**note:**_ nothing is case-sensitive.

_**note:**_ you can search on partial strings. search methods use "contains"

## yoga poses

---

* `/yoga_poses` - get all yoga poses. you can filter them based on the yoga category and name
* `/yoga_poses/:id` - get yoga pose by id

_**note:**_ data includes the yoga category the pose belongs to

| query params  | description | 
| ------------- |-------------| 
|yoga_category_id| the yoga category id of the pose|
|yoga_category_name| the yoga category name of the pose|
|yoga_category_short_name| the yoga category short name of the pose|
|sanskrit_name| the sanskrit name of the pose|
|english_name| the english name of the pose|  


#### examples

1. get all yoga poses
```
https://lightning-yoga-api.herokuapp.com/yoga_poses
```

2. get all yoga poses by a category name
```
https://lightning-yoga-api.herokuapp.com/yoga_poses?yoga_category_name=hatha
```

3. get all yoga poses by a partial category name and a partial yoga pose english name
```
https://lightning-yoga-api.herokuapp.com/yoga_poses?yoga_category_name=hat&english_name=boat
```

4. get yoga pose by id
```
https://lightning-yoga-api.herokuapp.com/yoga_poses/1
```

#### example data

##### list of yoga poses:
```json
[
    {
        "id": 1,
        "sanskrit_name": "Navasana",
        "english_name": "Boat",
        "img_url": "https://www.dropbox.com/s/4m64ztxkj8a4dab/boatstraightlegs.svg?raw=1",
        "yoga_category_id": 1,
        "created_at": "2016-01-14T22:23:39.902Z",
        "updated_at": "2016-01-14T22:23:39.902Z",
        "yoga_category": {
            "id": 1,
            "name": "Hatha",
            "short_name": "hatha",
            "description": "The Sanskrit term \"hatha\" is an umbrella term for all physical postures of yoga. In the West, hatha yoga simply refers to all the other styles of yoga (Ashtanga, Iyengar, etc.) that are grounded in a physical practice. However, there are other branches of yoga such as kriya, raja, and karma yoga that are separate from the physical-based yoga practice. The physical-based yoga is the most popular and has numerous styles. Hatha yoga classes are best for beginners since they are usually paced slower than other yoga styles. Hatha classes today are a classic approach to breathing and exercises. If you are brand-new to yoga, hatha yoga is a great entry point to the practice.",
            "parent_yoga_category_id": null,
            "created_at": "2018-06-21T04:58:24.782Z",
            "updated_at": "2018-06-21T04:58:24.782Z"
        }
    },
    {
        "id": 2,
        "sanskrit_name": "Ardha Navasana",
        "english_name": "Half-Boat",
        "img_url": "https://www.dropbox.com/s/1nx0r94msxjwvyp/boatbentlegs.svg?raw=1",
        "yoga_category_id": 1,
        "created_at": "2016-01-14T22:23:39.909Z",
        "updated_at": "2016-01-14T22:23:39.909Z",
        "yoga_category": {
            "id": 1,
            "name": "Hatha",
            "short_name": "hatha",
            "description": "The Sanskrit term \"hatha\" is an umbrella term for all physical postures of yoga. In the West, hatha yoga simply refers to all the other styles of yoga (Ashtanga, Iyengar, etc.) that are grounded in a physical practice. However, there are other branches of yoga such as kriya, raja, and karma yoga that are separate from the physical-based yoga practice. The physical-based yoga is the most popular and has numerous styles. Hatha yoga classes are best for beginners since they are usually paced slower than other yoga styles. Hatha classes today are a classic approach to breathing and exercises. If you are brand-new to yoga, hatha yoga is a great entry point to the practice.",
            "parent_yoga_category_id": null,
            "created_at": "2018-06-21T04:58:24.782Z",
            "updated_at": "2018-06-21T04:58:24.782Z"
        }
    },
    {
        "id": 3,
        "sanskrit_name": "Dhanurasana",
        "english_name": "Bow",
        "img_url": "https://www.dropbox.com/s/wizj5kwxvez4c0a/bow.svg?raw=1",
        "yoga_category_id": 1,
        "created_at": "2016-01-14T22:23:39.912Z",
        "updated_at": "2016-01-14T22:23:39.912Z",
        "yoga_category": {
            "id": 1,
            "name": "Hatha",
            "short_name": "hatha",
            "description": "The Sanskrit term \"hatha\" is an umbrella term for all physical postures of yoga. In the West, hatha yoga simply refers to all the other styles of yoga (Ashtanga, Iyengar, etc.) that are grounded in a physical practice. However, there are other branches of yoga such as kriya, raja, and karma yoga that are separate from the physical-based yoga practice. The physical-based yoga is the most popular and has numerous styles. Hatha yoga classes are best for beginners since they are usually paced slower than other yoga styles. Hatha classes today are a classic approach to breathing and exercises. If you are brand-new to yoga, hatha yoga is a great entry point to the practice.",
            "parent_yoga_category_id": null,
            "created_at": "2018-06-21T04:58:24.782Z",
            "updated_at": "2018-06-21T04:58:24.782Z"
        }
    }
]
```

#### single yoga pose

```json 
{
    "id": 1,
    "sanskrit_name": "Navasana",
    "english_name": "Boat",
    "img_url": "https://www.dropbox.com/s/4m64ztxkj8a4dab/boatstraightlegs.svg?raw=1",
    "yoga_category_id": 1,
    "created_at": "2016-01-14T22:23:39.902Z",
    "updated_at": "2016-01-14T22:23:39.902Z",
    "yoga_category": {
        "id": 1,
        "name": "Hatha",
        "short_name": "hatha",
        "description": "The Sanskrit term \"hatha\" is an umbrella term for all physical postures of yoga. In the West, hatha yoga simply refers to all the other styles of yoga (Ashtanga, Iyengar, etc.) that are grounded in a physical practice. However, there are other branches of yoga such as kriya, raja, and karma yoga that are separate from the physical-based yoga practice. The physical-based yoga is the most popular and has numerous styles. Hatha yoga classes are best for beginners since they are usually paced slower than other yoga styles. Hatha classes today are a classic approach to breathing and exercises. If you are brand-new to yoga, hatha yoga is a great entry point to the practice.",
        "parent_yoga_category_id": null,
        "created_at": "2018-06-21T04:58:24.782Z",
        "updated_at": "2018-06-21T04:58:24.782Z"
    }
}
```

---

## yoga categories


* `/yoga_categories` - get all yoga categories. you can filter them based on the name or short name
* `/yoga_categories/:id` - get a yoga category by id

_**note:**_ data includes the yoga category's yoga poses

| query params  | description | 
| ------------- |-------------| 
|yoga_category_name| the name of the yoga category|
|yoga_category_short_name| the short name of the yoga category|

#### examples

1. get all yoga categories
```
https://lightning-yoga-api.herokuapp.com/yoga_categories
```

2. get all yoga categories by name
```
https://lightning-yoga-api.herokuapp.com/yoga_categories?yoga_category_name=hatha
```

3. get yoga category by id
```
https://lightning-yoga-api.herokuapp.com/yoga_categories/1
```

#### example data

##### list of yoga categories:

```json
[
    {
        "id": 1,
        "name": "Hatha",
        "short_name": "hatha",
        "description": "The Sanskrit term \"hatha\" is an umbrella term for all physical postures of yoga. In the West, hatha yoga simply refers to all the other styles of yoga (Ashtanga, Iyengar, etc.) that are grounded in a physical practice. However, there are other branches of yoga such as kriya, raja, and karma yoga that are separate from the physical-based yoga practice. The physical-based yoga is the most popular and has numerous styles. Hatha yoga classes are best for beginners since they are usually paced slower than other yoga styles. Hatha classes today are a classic approach to breathing and exercises. If you are brand-new to yoga, hatha yoga is a great entry point to the practice.",
        "parent_yoga_category_id": null,
        "created_at": "2018-06-21T04:58:24.782Z",
        "updated_at": "2018-06-21T04:58:24.782Z",
        "yoga_poses": [
            {
            "id": 1,
            "sanskrit_name": "Navasana",
            "english_name": "Boat",
            "img_url": "https://www.dropbox.com/s/4m64ztxkj8a4dab/boatstraightlegs.svg?raw=1",
            "yoga_category_id": 1,
            "created_at": "2016-01-14T22:23:39.902Z",
            "updated_at": "2016-01-14T22:23:39.902Z"
            }
        ]
    },
    {
        "id": 2,
        "name": "Iyengar",
        "short_name": "iyengar",
        "description": "Iyengar yoga was founded by B.K.S. Iyengar and focuses on alignment as well as detailed and precise movements. In an Iyengar class, students perform a variety of postures while controlling the breath. Generally, poses are held for a long time while adjusting the minutiae of the pose. Iyengar relies heavily on props to help students perfect their form and go deeper into poses in a safe manner. Although you won’t jump around, you will definitely get a workout and feel incredibly open and relaxed after an Iyengar class. This style is really great for people with injuries who need to work slowly and methodically.",
        "parent_yoga_category_id": null,
        "created_at": "2018-06-21T04:58:24.812Z",
        "updated_at": "2018-06-21T04:58:24.812Z",
        "yoga_poses": []
    },
    {
        "id": 3,
        "name": "Kundalini",
        "short_name": "kundalini",
        "description": "Kundalini yoga practice is equal parts spiritual and physical. This style is all about releasing the kundalini energy in your body said to be trapped, or coiled, in the lower spine. These classes really work your core and breathing with fast-moving, invigorating postures and breath exercises. These classes are pretty intense and can involve chanting, mantra, and meditation.",
        "parent_yoga_category_id": null,
        "created_at": "2018-06-21T04:58:24.814Z",
        "updated_at": "2018-06-21T04:58:24.814Z",
        "yoga_poses": []
    }
]
```

##### single yoga category

```json
{
    "id": 5,
    "name": "Vinyasa",
    "short_name": "vinyasa",
    "description": "Vinyasa means \"to place in a special way\" and in this case yoga postures. Vinyasa is the most athletic yoga style. Vinyasa was adapted from Ashtanga yoga in the 1980s. In Vinyasa classes, the movement is coordinated with your breath and movement to flow from one pose to another. Many types of yoga can also be considered Vinyasa flows such as Ashtanga, power yoga, and prana. Vinyasa styles can vary depending on the teacher, and there can be many different types of poses in different sequences. I personally teach an alignment-based style of vinyasa and choreograph new flows every time, but I also like to hold some of the poses a bit longer after warming up.",
    "parent_yoga_category_id": null,
    "created_at": "2018-06-21T04:58:24.817Z",
    "updated_at": "2018-06-21T04:58:24.817Z",
    "yoga_poses": []
}

```