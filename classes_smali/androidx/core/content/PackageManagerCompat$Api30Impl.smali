.class Landroidx/core/content/PackageManagerCompat$Api30Impl;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/PackageManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api30Impl"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areUnusedAppRestrictionsEnabled(Landroid/content/Context;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/a;->w(Landroid/content/pm/PackageManager;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
