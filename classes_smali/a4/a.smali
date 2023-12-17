.class public final La4/a;
.super Ljava/lang/Object;
.source "XiaomiAccountServiceProxyCompat.java"


# static fields
.field public static final a:La/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSdkBuild;->CURRENT_VERSION:I

    .line 3
    const/16 v1, 0x14

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    new-instance v0, La4/b;

    .line 9
    invoke-direct {v0}, La4/b;-><init>()V

    .line 12
    sput-object v0, La4/a;->a:La/b;

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
    sput-object v0, La4/a;->a:La/b;

    .line 23
    :goto_16
    return-void
.end method
