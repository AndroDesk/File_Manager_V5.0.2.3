.class public final Lf0/c;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# direct methods
.method public static a(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lf0/b;->a:[I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 9
    packed-switch p0, :pswitch_data_64

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :pswitch_d  #0x1d
    sget-object p0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    .line 16
    return-object p0

    .line 17
    :pswitch_10  #0x1c
    sget-object p0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    .line 19
    return-object p0

    .line 20
    :pswitch_13  #0x1b
    sget-object p0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    .line 22
    return-object p0

    .line 23
    :pswitch_16  #0x1a
    sget-object p0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    .line 25
    return-object p0

    .line 26
    :pswitch_19  #0x19
    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    .line 28
    return-object p0

    .line 29
    :pswitch_1c  #0x18
    sget-object p0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    .line 31
    return-object p0

    .line 32
    :pswitch_1f  #0x17
    sget-object p0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    .line 34
    return-object p0

    .line 35
    :pswitch_22  #0x16
    sget-object p0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    .line 37
    return-object p0

    .line 38
    :pswitch_25  #0x15
    sget-object p0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    .line 40
    return-object p0

    .line 41
    :pswitch_28  #0x14
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 43
    return-object p0

    .line 44
    :pswitch_2b  #0x13
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 46
    return-object p0

    .line 47
    :pswitch_2e  #0x12
    sget-object p0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    .line 49
    return-object p0

    .line 50
    :pswitch_31  #0x11
    sget-object p0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    .line 52
    return-object p0

    .line 53
    :pswitch_34  #0x10
    sget-object p0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    .line 55
    return-object p0

    .line 56
    :pswitch_37  #0xf
    sget-object p0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    .line 58
    return-object p0

    .line 59
    :pswitch_3a  #0xe
    sget-object p0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 61
    return-object p0

    .line 62
    :pswitch_3d  #0xd
    sget-object p0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    .line 64
    return-object p0

    .line 65
    :pswitch_40  #0xc
    sget-object p0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    .line 67
    return-object p0

    .line 68
    :pswitch_43  #0xb
    sget-object p0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    .line 70
    return-object p0

    .line 71
    :pswitch_46  #0xa
    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 73
    return-object p0

    .line 74
    :pswitch_49  #0x9
    sget-object p0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    .line 76
    return-object p0

    .line 77
    :pswitch_4c  #0x8
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    .line 79
    return-object p0

    .line 80
    :pswitch_4f  #0x7
    sget-object p0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    .line 82
    return-object p0

    .line 83
    :pswitch_52  #0x6
    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 85
    return-object p0

    .line 86
    :pswitch_55  #0x5
    sget-object p0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    .line 88
    return-object p0

    .line 89
    :pswitch_58  #0x4
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    .line 91
    return-object p0

    .line 92
    :pswitch_5b  #0x3
    sget-object p0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    .line 94
    return-object p0

    .line 95
    :pswitch_5e  #0x2
    sget-object p0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    .line 97
    return-object p0

    .line 98
    :pswitch_61  #0x1
    sget-object p0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    .line 100
    return-object p0

    .line 101
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_61  #00000001
        :pswitch_5e  #00000002
        :pswitch_5b  #00000003
        :pswitch_58  #00000004
        :pswitch_55  #00000005
        :pswitch_52  #00000006
        :pswitch_4f  #00000007
        :pswitch_4c  #00000008
        :pswitch_49  #00000009
        :pswitch_46  #0000000a
        :pswitch_43  #0000000b
        :pswitch_40  #0000000c
        :pswitch_3d  #0000000d
        :pswitch_3a  #0000000e
        :pswitch_37  #0000000f
        :pswitch_34  #00000010
        :pswitch_31  #00000011
        :pswitch_2e  #00000012
        :pswitch_2b  #00000013
        :pswitch_28  #00000014
        :pswitch_25  #00000015
        :pswitch_22  #00000016
        :pswitch_1f  #00000017
        :pswitch_1c  #00000018
        :pswitch_19  #00000019
        :pswitch_16  #0000001a
        :pswitch_13  #0000001b
        :pswitch_10  #0000001c
        :pswitch_d  #0000001d
    .end packed-switch
.end method
