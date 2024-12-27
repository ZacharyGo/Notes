import pygame

pygame.init()
pygame.font.init()

# define colors
BLACK = (0, 0, 0)
PINK = (255, 105, 180)
BLUE = (255, 105, 0)

screen = pygame.display.set_mode((800,600))

title_font = pygame.font.SysFont('calibri', 20)
title = title_font.render('**** BOUNCE ****', 1, BLUE)
text_font = pygame.font.SysFont('crackman', 40)
text = text_font.render("Hello World!", 1, PINK)
"""
load ball
"""
image = pygame.image.load("..\\codes\\assets\\images\\beach_ball.png")

text_rect = text.get_rect()
direction_x = 1
direction_y = 1

done = False

#fps_clock = pygame.

while not done:
    events = pygame.event.get()
    for event in events:
        if event.type == pygame.QUIT:
            done = True
            
    if text_rect.left < 0:
        direction_x = 1
    
    if text_rect.right > screen.get_size()[0]:
            direction_x = -1

    if text_rect.top < 0:
        direction_y = 1
    
    if text_rect.bottom > screen.get_size()[1]:
            direction_y = -1

    text_rect = text_rect.move((direction_x, direction_y))
    screen.fill(BLACK)
    screen.blit(text, text_rect)
    screen.blit(title, (5,5))
    pygame.display.flip()
    
pygame.quit()
        