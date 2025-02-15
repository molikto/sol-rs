#version 460
#extension GL_NV_ray_tracing : require
#extension GL_EXT_nonuniform_qualifier : enable
#extension GL_EXT_scalar_block_layout : enable

layout(location = 0) rayPayloadInNV vec3 hitValue;
hitAttributeNV vec3 attribs;

void main()
{
    const vec3 barycentrics = vec3(1.0 - attribs.x - attribs.y, attribs.x, attribs.y);
    hitValue = barycentrics;
}