# Release 2: Nested Data Structures - Classroom: Stranger Things

classroom = {
	teacher_desk: [
		'red pen',
		'teacher mug',
		'graded papers',
		'glasses',
		'weekly calendar',
		'pencil sharpener'
	],
	first_row: {
		will_desk: {
			name_tag: 'Will Byers',
			book: 'Lord of the Rings',
			folder: [
				'drawings',
				'classwork',
				'binder paper'
			],
			miscellaneous: [
				'pencil',
				'black pen',
				'eraser',
				'dice bag'
			]
		},
		lucas_desk: {
			name_tag: 'Lucas Sinclair',
			book: 'The Hobbit',
			folder: [
				'classwork',
				'binder paper'
			],
			miscellaneous: [
				'pencil',
				'black pen',
				'eraser',
				'walkie-talkie'
			]

		}, 
		dustin_desk: {
			name_tag: 'Dustin Henderson',
			medical_note: 'Cleidocranial dysplasia',
			folder: [
				'classwork',
				'binder paper',
			],
			miscellaneous: [
				'pencil',
				'black pen',
				'eraser',
				'compass'
			]
		},
		mike_desk: {
			name_tag: 'Mike Wheeler',
			book: 'Dungeon Masters Guide',
			folder: [
				'classwork',
				'binder paper',
			],
			miscellaneous: [
				'pencil',
				'black pen',
				'eraser',
				'walkie-talkie'
			]
		}
	},
	second_row: {
		eleven_desk: {
			name_tag: 'Eleven',
			drink: 'Coca-cola',
			medical_note: 'Constant nose bleeds',
			miscellaneous: [
				'wig',
				'crayons',
				'food'
			]
		},
		nancy_desk: {
			name_tag: 'Nancy Wheeler',
			book: 'Diary',
			folder: [
				'classwork',
				'flash cards',
				'binder paper',
			],
			love_note: 'Love you Nance! From - Steve Harrington'
		},
		barb_desk: {
			name_tag: 'Barbara Holland',
			teacher_note: 'Returned all items to Mr. and Mrs. Holland'
		},
		jonathan_desk: {
			name_tag: 'Jonathan Wheeler',
			bag: [
				'camera',
				'lens',
				'photos'
			],
			record: 'The Clash - Should I Stay or Should I Go'
		}
	},
	supply_closet: {
		top_shelf: [
			'tape',
			'glue',
			'pencils',
			'note cards'
		], 
		bottom_shelf: [
			'folders',
			'binder paper',
			'storage boxes',
			'rulers'
		]
	}
}

p classroom[:teacher_desk][2]
# => prints "graded papers"

p classroom[:first_row][:dustin_desk][:medical_note]
# => prints "Cleidocranial dysplasia"

p classroom[:first_row][:mike_desk][:miscellaneous]
# => prints all items in the miscellaneous array

p classroom[:second_row][:jonathan_desk][:bag][0]
# => prints camera

p classroom
# => prints entire hash and all nested data within