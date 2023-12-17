.class public final Lcom/google/android/gms/common/util/PlatformVersion;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static isAtLeastHoneycomb()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastHoneycombMR1()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastIceCreamSandwich()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastIceCreamSandwichMR1()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastJellyBean()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastJellyBeanMR1()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastJellyBeanMR2()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastKitKat()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastKitKatWatch()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastLollipop()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastLollipopMR1()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastM()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastN()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastO()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static isAtLeastP()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static isAtLeastQ()Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget v0, Li0/a;->a:I

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x1d

    .line 9
    if-lt v0, v3, :cond_c

    .line 11
    move v4, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v4, v2

    .line 14
    :goto_d
    if-nez v4, :cond_33

    .line 16
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 18
    const-string v5, "REL"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_1b

    .line 26
    if-ge v0, v3, :cond_33

    .line 28
    :cond_1b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 31
    move-result v0

    .line 32
    if-ne v0, v1, :cond_32

    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 37
    move-result v0

    .line 38
    const/16 v3, 0x51

    .line 40
    if-lt v0, v3, :cond_32

    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 45
    move-result v0

    .line 46
    const/16 v3, 0x5a

    .line 48
    if-gt v0, v3, :cond_32

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    return v2

    .line 52
    :cond_33
    :goto_33
    return v1
.end method
