.class public Lcom/xiaomi/micloudsdk/utils/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static final MIUI12_VERSION_CODE:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMiuiVersionCode()I
    .registers 2

    .line 1
    const-string v0, "ro.miui.ui.version.code"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiui/cloud/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isMiui12()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/SystemUtils;->getMiuiVersionCode()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
