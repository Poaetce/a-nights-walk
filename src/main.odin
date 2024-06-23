package main

import "vendor:raylib"

main :: proc() {
	raylib.InitWindow(1280, 720, "a night's walk")
	defer raylib.CloseWindow()

	for !raylib.WindowShouldClose() {
		raylib.BeginDrawing()
		defer raylib.EndDrawing()

		raylib.ClearBackground(raylib.WHITE)
	}
}
