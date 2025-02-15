    theme {
        background {
            opacity=60
            effect=1
            gradient
            {
                enabled = true
                linear = [0, 100, 0, 0]
                stop = [
                    [0.0, #000000, 90],
                    [0.5, #340000, 90],
                    [1.0, #000000, 90]
                ]
            }
		
        }
		 item{
		
			opacity = 100
			prefix = 1
			text
			{
				normal = #cccccc
				select = #9cdcfe
				normal-disabled = #b1b1b1
				select-disabled = #000000
			}
			back
			{
				normal-disabled = #000000
				select = #190436
				select-disabled = #b1b1b1
			}
		}
		border{
			enabled = true
			size = 1
			color = #ad0c1b
			opacity = 100
			radius = 2
		}
		shadow{
			enabled = true
			size = 5
			opacity = 5
			color = #60060f
		}
		separator{
			size = 0
			color = #050532
		}
		symbol{
			normal = #ff6400
			select = #ff6400
			normal-disabled = #b1b1b1
			select-disabled = #b1b1b1
		}
		
		image.color=[color.accent, #ff6400]
        border{
            enabled = 1
            size = 1
            color =  color.accent
            opacity = 50
        }
    }


