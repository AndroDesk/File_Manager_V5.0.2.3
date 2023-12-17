.class public Lcom/android/fileexplorer/util/StatUtil;
.super Ljava/lang/Object;
.source "StatUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatParamsByPageType(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_22

    :pswitch_3  #0x7, 0x8
    const-string p0, ""

    return-object p0

    :pswitch_6  #0xa
    const-string p0, "favorite"

    return-object p0

    :pswitch_9  #0x9
    const-string p0, "app"

    return-object p0

    :pswitch_c  #0x6
    const-string p0, "mi_share"

    return-object p0

    :pswitch_f  #0x5
    const-string p0, "apk"

    return-object p0

    :pswitch_12  #0x4
    const-string p0, "zip"

    return-object p0

    :pswitch_15  #0x3
    const-string p0, "doc"

    return-object p0

    :pswitch_18  #0x2
    const-string p0, "music"

    return-object p0

    :pswitch_1b  #0x1
    const-string p0, "video"

    return-object p0

    :pswitch_1e  #0x0
    const-string p0, "picture"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_1b  #00000001
        :pswitch_18  #00000002
        :pswitch_15  #00000003
        :pswitch_12  #00000004
        :pswitch_f  #00000005
        :pswitch_c  #00000006
        :pswitch_3  #00000007
        :pswitch_3  #00000008
        :pswitch_9  #00000009
        :pswitch_6  #0000000a
    .end packed-switch
.end method
