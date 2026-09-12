import pygame
import sys

# Initialize Pygame
pygame.init()

# Screen dimensions
WIDTH, HEIGHT = 800, 600
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("GNOS")

# Colors (R, G, B)
BLACK = (0, 0, 0)
GREEN = (0, 255, 0)
YELLOW = (255, 255, 0)

# Font setup
try:
    font = pygame.font.SysFont("Arial", 72, bold=True)
except Exception as e:
    print("Font error:", e)
    pygame.quit()
    sys.exit()

# Render text
text_surface = font.render("GNOS", True, GREEN)
text_rect = text_surface.get_rect(center=(WIDTH // 2, HEIGHT // 4))

# Square properties
square_size = 100
square_x = 0
square_y = HEIGHT - square_size

# Circle properties (centered on square)
circle_radius = square_size // 3
circle_center = (square_x + square_size // 2, square_y + square_size // 2)

# Main loop
clock = pygame.time.Clock()
while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()

    # Fill background
    screen.fill(BLACK)

    # Draw text
    screen.blit(text_surface, text_rect)

    # Draw green square
    pygame.draw.rect(screen, GREEN, (square_x, square_y, square_size, square_size))

    # Draw yellow circle on square
    pygame.draw.circle(screen, YELLOW, circle_center, circle_radius)

    # Update display
    pygame.display.flip()
    clock.tick(60)
