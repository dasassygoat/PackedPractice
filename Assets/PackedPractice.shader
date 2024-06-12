Shader "Holistic/PackedPractice"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
    }
    SubShader
    {

        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Lambert

        struct Input
        {
            float2 uvMainTex;
        };

        fixed4 _Color;

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo.r = _Color.x;

        }
        ENDCG
    }
    FallBack "Diffuse"
}
