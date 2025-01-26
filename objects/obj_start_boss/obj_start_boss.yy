{
  "$GMObject":"",
  "%Name":"obj_start_boss",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":64,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_start_boss",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"boss_room","filters":[
        "GMRoom",
      ],"listItems":[],"multiselect":false,"name":"boss_room","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"rm_battle","path":"rooms/rm_battle/rm_battle.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"rm_battle","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"boss_type","filters":[],"listItems":[],"multiselect":false,"name":"boss_type","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"daron","varType":2,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_dummy",
    "path":"sprites/spr_dummy/spr_dummy.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}