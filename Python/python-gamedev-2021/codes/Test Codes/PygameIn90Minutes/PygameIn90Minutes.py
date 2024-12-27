import pygame
import os

WIDTH, HEIGHT = 900, 500
WIN = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("First Game")
WHITE = (255,255,255)
FPS = 60
print(os.path.dirname(os.path.realpath(__file__)))
print(os.path.dirname(os.path.realpath(__file__)))
YELLOW_SPACESHIP_IMAGE = pygame.image.load(os.path.join('.\\Assets', 'spaceship_yellow.png'))
#RED_SPACESHIP_IMAGE = pygame.image.load(os.path.join('Test Code/Assets', 'spaceship_red.png'))

def draw_window():
    WIN.fill(WHITE)
   # WIN.blit(YELLOW_SPACESHIP_IMAGE, (225, 250))
    pygame.display.update()

def main():
    clock = pygame.time.Clock()

    run = True
    while run:
        clock.tick(FPS)
        for event in pygame.event.get(): # Get all events
            if event.type == pygame.QUIT:
                run = False

        draw_window()

    pygame.quit()

    # Run only if we are directly running this file 
    # not as a module of another project
if __name__ == "__main__":    
    main()