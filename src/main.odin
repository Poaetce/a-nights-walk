package main

import "vendor:raylib"

WINDOW_DIMENSIONS :: [2]i32{1280, 720}
WINDOW_TITLE: cstring : "a night's walk"

main :: proc() {
	raylib.InitWindow(WINDOW_DIMENSIONS.x, WINDOW_DIMENSIONS.y, WINDOW_TITLE)
	defer raylib.CloseWindow()

	for !raylib.WindowShouldClose() {
		{
			delta_time: f32 = raylib.GetFrameTime()
			process(delta_time)
		}
		{
			raylib.BeginDrawing()
			defer raylib.EndDrawing()
			draw()
		}
	}
}

draw :: proc() {
	raylib.ClearBackground(raylib.WHITE)
}

process :: proc(delta_time: f32) {
}
