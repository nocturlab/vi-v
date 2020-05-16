import ui
import gx
import os

// Some parameters
const (
	app_title = 'Vi-v'
	win_width = 700
	win_height = 385
	nr_cols = 4
	cell_height = 25
	cell_width = 100
	table_width = cell_width * nr_cols
)

// State can save the actual window state for futher restoration. This is the app
struct App {
mut:
	window     &ui.Window
	label      &ui.Label
	started    bool
}

// Vi-v entrypoint
fn main() {
	// Instantiate the app
	mut app := &App{
		//some var to save that can restore the actual state of window
    label: app_title
	}

	create(app)
	
	ui.run(app.window)
}

fn create(app mut &App) {
	// Open the window
	window := ui.window({
		width: win_width
		height: win_height
		state: app
		title: app_title
	}, [
		ui.row({
			stretch: true
			margin: {top:10,left:10,right:10,bottom:10}
		}, [
			ui.column({
				width: 200
				spacing: 13
			}, [
				// left column display
			])
			ui.column({
				stretch: true
				alignment: .right
			},[
				// mid column dislay
				ui.canvas(
					height: 275
					draw_fn: canvas_draw
				)
			])
			ui.column({
				stretch: true
				alignment: .right
			},[
				// left column dislay
			])
		]),
		ui.menu(
			items: [
				ui.MenuItem{'Delete all users', menu_click},
				ui.MenuItem{'Export users', menu_click},
				ui.MenuItem{'Exit', menu_click},
			]
		)
	])
	app.window = window
}


fn menu_click() {
  ui.message_box('Menu clicked')
}

fn btn_help_click(a, b voidptr) {
  ui.message_box('Built with V UI')
}

/*
fn (app mut App) btn_add_click(b &Button) {
}
*/

fn btn_add_click(mut app App, x voidptr) {
	
}

fn canvas_draw(app &App) {
	gg := app.window.ui.gg
	x := 240
	gg.draw_rect(x - 20, 0, table_width + 100, 800, gx.white)
	y := 20 * cell_height
	// Outer border
	gg.draw_empty_rect(x, y, table_width, cell_height, gx.Gray)
	gg.draw_empty_rect(x - 20, y, table_width, cell_height, gx.Gray)
}
