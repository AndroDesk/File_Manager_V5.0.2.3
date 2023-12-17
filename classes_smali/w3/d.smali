.class public final Lw3/d;
.super Ljava/lang/Object;
.source "NetworkAvailabilityManagerCompat.java"


# static fields
.field public static final a:La/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    .line 3
    const/16 v1, 0x12

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    new-instance v0, Lw3/e;

    .line 9
    invoke-direct {v0}, Lw3/e;-><init>()V

    .line 12
    sput-object v0, Lw3/d;->a:La/b;

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    new-instance v0, La/b;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, La/b;-><init>(I)V

    .line 21
    sput-object v0, Lw3/d;->a:La/b;

    .line 23
    :goto_16
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    sget-object v0, Lw3/d;->a:La/b;

    .line 3
    invoke-virtual {v0, p0, p1}, La/b;->Y(Landroid/content/Context;Z)V

    .line 6
    return-void
.end method
