.class public final Landroidx/core/content/pm/PermissionInfoCompat;
.super Ljava/lang/Object;
.source "PermissionInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;,
        Landroidx/core/content/pm/PermissionInfoCompat$ProtectionFlags;,
        Landroidx/core/content/pm/PermissionInfoCompat$Protection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getProtection(Landroid/content/pm/PermissionInfo;)I
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    invoke-static {p0}, Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;->getProtection(Landroid/content/pm/PermissionInfo;)I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 14
    and-int/lit8 p0, p0, 0xf

    .line 16
    return p0
.end method

.method public static getProtectionFlags(Landroid/content/pm/PermissionInfo;)I
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    invoke-static {p0}, Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;->getProtectionFlags(Landroid/content/pm/PermissionInfo;)I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 14
    and-int/lit8 p0, p0, -0x10

    .line 16
    return p0
.end method
