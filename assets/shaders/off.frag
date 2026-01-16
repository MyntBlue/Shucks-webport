#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main
uniform vec4 iMouse;

vec4 FADE_COLOR = vec4(0.0, 0.0, 0.0, 1.0);
float BUFFER = 0.1;
float SCALE_SPEED = 1.2;

void mainImage()
{
    float onePixelScale = (iResolution.y - 1.0) / iResolution.y;
    
    float time = mod(iTime * 4.0, 1.0 / SCALE_SPEED + 1.0 + BUFFER * 2.0);
    time = clamp(time- BUFFER, 0.0, 1.0 / SCALE_SPEED + 1.0);
    
    float scaleTime = clamp(time * SCALE_SPEED, 0.0, onePixelScale);
    float fadeTime = clamp(time - onePixelScale / SCALE_SPEED, 0.0, 1.0);
        
	vec2 uv = fragCoord.xy / iResolution.xy;
    vec2 scaledUV = vec2(
        (uv.x - 0.5) * (1.0 - scaleTime) + 0.5,
        (uv.y - 0.5) / (1.0 - scaleTime) + 0.5
    );
    
	vec4 textureColor = texture(iChannel0, scaledUV) + vec4(scaleTime, scaleTime, scaleTime, 0);
    float fadeOutLevel = 1.0 - fadeTime;
    float cropPixel = min(
        clamp(
            sign(
                abs(scaleTime / 2.0 - 0.5) 
                - abs(uv.y - 0.5)
            )
            , 0.0, 1.0
        ), 
        clamp(
            sign(
                1.0 - fadeTime
                - abs(uv.x - 0.5)
            ),
            0.0, 
            1.0
        )
    );
    
    fragColor = mix(
        FADE_COLOR, 
        mix(FADE_COLOR, textureColor, fadeOutLevel), 
        cropPixel
    );
}