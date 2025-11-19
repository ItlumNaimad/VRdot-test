shader_type spatial;
render_mode blend_mix, unshaded, cull_disabled;

uniform vec3 emission : source_color;
uniform sampler2D ramp;

varying float opacity;

void vertex() {
	opacity = CUSTOM0.x;
}

void fragment() {
	float mix = texture(ramp, vec2(opacity, 0)).r;
	ALBEDO = emission;
	ALPHA = mix;
}
