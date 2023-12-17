.class public final Lw3/d;
.super Ljava/lang/Object;
.source "NetworkAvailabilityManagerCompat.java"


# static fields
.field public static final a:La/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_e

    new-instance v0, Lw3/e;

    invoke-direct {v0}, Lw3/e;-><init>()V

    sput-object v0, Lw3/d;->a:La/b;

    goto :goto_16

    :cond_e
    new-instance v0, La/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/b;-><init>(I)V

    sput-object v0, Lw3/d;->a:La/b;

    :goto_16
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    sget-object v0, Lw3/d;->a:La/b;

    invoke-virtual {v0, p0, p1}, La/b;->Y(Landroid/content/Context;Z)V

    return-void
.end method
