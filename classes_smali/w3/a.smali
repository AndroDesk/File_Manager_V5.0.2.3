.class public final Lw3/a;
.super Ljava/lang/Object;
.source "BindAccountServiceCompat.java"


# static fields
.field public static final a:La/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_e

    new-instance v0, Lw3/b;

    invoke-direct {v0}, Lw3/b;-><init>()V

    sput-object v0, Lw3/a;->a:La/b;

    goto :goto_16

    :cond_e
    new-instance v0, La/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/b;-><init>(I)V

    sput-object v0, Lw3/a;->a:La/b;

    :goto_16
    return-void
.end method
