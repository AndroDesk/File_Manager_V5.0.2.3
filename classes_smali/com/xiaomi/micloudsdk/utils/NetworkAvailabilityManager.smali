.class public Lcom/xiaomi/micloudsdk/utils/NetworkAvailabilityManager;
.super Ljava/lang/Object;
.source "NetworkAvailabilityManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailability(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lw3/d;->a:La/b;

    .line 3
    invoke-virtual {v0, p0}, La/b;->z(Landroid/content/Context;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method
