.class public final Lw3/g;
.super Ljava/lang/Object;
.source "RequestEnvBuilderCompat.java"


# static fields
.field public static final a:Lw3/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_e

    new-instance v0, Lw3/i;

    invoke-direct {v0}, Lw3/i;-><init>()V

    sput-object v0, Lw3/g;->a:Lw3/h;

    goto :goto_15

    :cond_e
    new-instance v0, Lw3/h;

    invoke-direct {v0}, Lw3/h;-><init>()V

    sput-object v0, Lw3/g;->a:Lw3/h;

    :goto_15
    return-void
.end method
