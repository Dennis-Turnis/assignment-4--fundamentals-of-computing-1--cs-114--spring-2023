void drawX(float x, float y, float size ) {
  // Draw an X at the given position and size
  line(x + 25, y + 25, x + size - 25, y + size - 25);
  line(x + 25, y + size - 25, x + size - 25, y + 25);
}

void drawO(float x, float y, float size) {
  // Draw an O at the given position and size
  circle(x + size / 2, y + size / 2, size - 50);
}
