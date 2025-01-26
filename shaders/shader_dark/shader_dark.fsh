varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float darkness; // Valeur de l'assombrissement (entre 0 et 1)

void main() {
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord); // Couleur du sprite
    gl_FragColor = base_color * vec4(darkness, darkness, darkness, 1.0); // Applique l'assombrissement
}
