.class public final Lw3/g;
.super Ljava/lang/Object;
.source "RequestEnvBuilderCompat.java"


# static fields
.field public static final a:Lw3/h;


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
    new-instance v0, Lw3/i;

    .line 9
    invoke-direct {v0}, Lw3/i;-><init>()V

    .line 12
    sput-object v0, Lw3/g;->a:Lw3/h;

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    new-instance v0, Lw3/h;

    .line 17
    invoke-direct {v0}, Lw3/h;-><init>()V

    .line 20
    sput-object v0, Lw3/g;->a:Lw3/h;

    .line 22
    :goto_15
    return-void
.end method
