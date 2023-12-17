.class public Lcom/xiaomi/micloudsdk/utils/NetworkAvailabilityManager;
.super Ljava/lang/Object;
.source "NetworkAvailabilityManager.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailability(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lw3/d;->a:La/b;

    invoke-virtual {v0, p0}, La/b;->z(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
