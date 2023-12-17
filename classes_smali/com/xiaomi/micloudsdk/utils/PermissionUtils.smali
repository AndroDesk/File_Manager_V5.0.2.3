.class public Lcom/xiaomi/micloudsdk/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


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

.method public static isGdprPermissionGranted(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lx3/a;->a:La/b;

    invoke-virtual {v0, p0}, La/b;->L(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
