uniform sampler2D texture0;
uniform sampler2D texture1;
uniform vec4 fog_color;
varying vec2 texcoord0;
varying vec2 texcoord1;
varying float depth;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1.wxyz = ((texture2D (texture0, texcoord0).wxyz) * texture2D (texture1, texcoord1).wxyz);
    lowp vec4 tmpvar_2;
    tmpvar_2 = mix (tmpvar_1, fog_color, depth);
    gl_FragColor = tmpvar_2;
}

