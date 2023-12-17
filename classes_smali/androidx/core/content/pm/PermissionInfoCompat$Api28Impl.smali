.class Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;
.super Ljava/lang/Object;
.source "PermissionInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/PermissionInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api28Impl"
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
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/y;->a(Landroid/content/pm/PermissionInfo;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getProtectionFlags(Landroid/content/pm/PermissionInfo;)I
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/y;->A(Landroid/content/pm/PermissionInfo;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method
