.class public Lmiuix/autodensity/RootUtil;
.super Ljava/lang/Object;
.source "RootUtil.java"


# static fields
.field private static sDeviceRooted:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lmiuix/autodensity/RootUtil;->checkDeviceRooted()Z

    move-result v0

    sput-boolean v0, Lmiuix/autodensity/RootUtil;->sDeviceRooted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDeviceRooted()Z
    .registers 6

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const-string v3, "test-keys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    if-nez v0, :cond_2a

    const/4 v3, 0x2

    const-string v4, "/system/bin/su"

    const-string v5, "/system/xbin/su"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    :goto_1c
    if-ge v1, v3, :cond_2a

    aget-object v5, v4, v1

    invoke-static {v5}, La/a;->A(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_2b

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2a
    move v2, v0

    :goto_2b
    if-eqz v2, :cond_32

    const-string v0, "Current device is rooted"

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_32
    return v2
.end method

.method public static isDeviceRooted()Z
    .registers 1

    sget-boolean v0, Lmiuix/autodensity/RootUtil;->sDeviceRooted:Z

    return v0
.end method
