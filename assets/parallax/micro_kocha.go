components {
  id: "micro_kocha"
  component: "/assets/parallax/micro_kocha.script"
  properties {
    id: "color"
    value: "0.0, 0.0, 0.0, 0.0"
    type: PROPERTY_TYPE_VECTOR4
  }
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"kocha_face\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/images/items.atlas\"\n"
  "}\n"
  ""
}
