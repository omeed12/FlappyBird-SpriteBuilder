#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
}

-(void)update:(CCTime)delta
{
    // put update code here
    
    timeSinceObstacle += de;ta;
    
    
    if (timeSinceObstacle > 2.0f) {
        
        [self addObstacle];
        
        timeSinceObstacle = 0.0f;
        
    }
        
        
}

// put new methods here

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    [character flap];
    
}

@end
