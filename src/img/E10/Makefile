TARGETS=\
	cell_noise.png \
	cell_noise_with_fractal.png \
	curve.png \
	diamond_square.png \
	fast_erosion.png \
	final_map.png \
	gaussize.png \
	gradient_noise.png \
	gradient_noise_with_fractal.png \
	grid.png \
	hills.png \
	hydraulic_erosion.png \
	islandize.png \
	midpoint_displacement.png \
	mini_cell_c1.png \
	mini_cell_c2.png \
	mini_cell_c3.png \
	mini_cell_manhattan.png \
	mini_cell_euclidean.png \
	mini_cell_chebyshev.png \
	mini_value_linear.png \
	mini_value_cubic.png \
	mini_value_quintic.png \
	mini_value_cosine.png \
	ramp.png \
	sides.png \
	simplex_noise.png \
	simplex_noise_with_fractal.png \
	thermal_erosion.png \
	value_noise.png \
	value_noise_with_fractal.png

all: $(TARGETS)

%.pnm: %.yml
	mapmaker $<

%.png: %.pnm
	convert $< $@

%.png: %.dia
	dia -s 128x -t png $<

%.png: %.gp
	gnuplot < $<

final_map.png: final_map.yml
	mapmaker $<
	convert final_map.pnm $@ && rm -f final_map.pnm
	convert unit1.pnm unit1.png && rm -f unit1.pnm
	convert unit2.pnm unit2.png && rm -f unit2.pnm
	convert unit3.pnm unit3.png && rm -f unit3.pnm
	convert building1.pnm building1.png && rm -f building1.pnm
	convert building2.pnm building2.png && rm -f building2.pnm
	convert building3.pnm building3.png && rm -f building3.pnm
	convert final_map_shaded.pnm final_map_shaded.png && rm -f final_map_shaded.pnm

clean:
	rm -f $(TARGETS) *.pnm
