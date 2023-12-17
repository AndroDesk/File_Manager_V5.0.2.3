.class public Lmiuix/autodensity/RootUtil;
.super Ljava/lang/Object;
.source "RootUtil.java"


# static fields
.field private static sDeviceRooted:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/autodensity/RootUtil;->checkDeviceRooted()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lmiuix/autodensity/RootUtil;->sDeviceRooted:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDeviceRooted()Z
    .registers 6

    .line 1
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_10

    .line 7
    const-string v3, "test-keys"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    move v0, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v0, v1

    .line 18
    :goto_11
    if-nez v0, :cond_2a

    .line 20
    const/4 v3, 0x2

    .line 21
    const-string v4, "/system/bin/su"

    .line 23
    const-string v5, "/system/xbin/su"

    .line 25
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    :goto_1c
    if-ge v1, v3, :cond_2a

    .line 31
    aget-object v5, v4, v1

    .line 33
    invoke-static {v5}, La/a;->A(Ljava/lang/String;)Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_27

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_1c

    .line 43
    :cond_2a
    move v2, v0

    .line 44
    :goto_2b
    if-eqz v2, :cond_32

    .line 46
    const-string v0, "Current device is rooted"

    .line 48
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 51
    :cond_32
    return v2
.end method

.method public static isDeviceRooted()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiuix/autodensity/RootUtil;->sDeviceRooted:Z

    .line 3
    return v0
.end method
