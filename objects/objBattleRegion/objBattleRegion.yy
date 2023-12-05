{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "objBattleRegion",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"objPlayer","path":"objects/objPlayer/objPlayer.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"objEnemy","path":"objects/objEnemy/objEnemy.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"objBossOrc","path":"objects/objBossOrc/objBossOrc.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"objBrute","path":"objects/objBrute/objBrute.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"objBruteBoss","path":"objects/objBruteBoss/objBruteBoss.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"IsActive","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"RegionHeight","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"sprite_height","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"RegionWidth","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"sprite_width","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"LeftEdge","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"x - RegionWidth/2","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"RightEdge","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"x + RegionWidth/2","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"TopEdge","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"y - RegionHeight/2","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"BottomEdge","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"y + RegionHeight/2","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"HasEnemies","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
  ],
  "solid": false,
  "spriteId": {
    "name": "sprBattleRegion",
    "path": "sprites/sprBattleRegion/sprBattleRegion.yy",
  },
  "spriteMaskId": null,
  "visible": false,
}