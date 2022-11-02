[[stage(vertex)]]

// creating the vertex shader with a vec2<f32> array containing three vertex points for the triangle.
// Second step is converting vec2 vertices into vec4 points which are used to render the triangle.
fn vs_main([[builtin(vertex_index)]] in_vertex_index: u32) -> [[builtin(position)]] vec4<f32> {
var pos = array<vec2<f32>, 3>(
     vec2<f32>( 0.0, 0.5),
    vec2<f32>(-0.5, -0.5),
    vec2<f32>( 0.5, -0.5) );
return vec4<f32>(pos[in_vertex_index], 0.0, 1.0); 
}

// creating the fragment shader to define the color with vec4<f32> (RGBA).
// Range for the color components is a value between [0.0] and [0.1].
[[stage(fragment)]]
fn fs_main() -> [[location(0)]] vec4<f32> {
return vec4<f32>(1.0, 1.0, 0.0, 1.0); 
}
