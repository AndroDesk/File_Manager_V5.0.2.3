.class public final Lx3/a;
.super Ljava/lang/Object;
.source "GdprUtilsCompat.java"


# static fields
.field public static final a:La/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    new-instance v0, Lx3/c;

    invoke-direct {v0}, Lx3/c;-><init>()V

    sput-object v0, Lx3/a;->a:La/b;

    goto :goto_22

    :cond_e
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    new-instance v0, Lx3/b;

    invoke-direct {v0}, Lx3/b;-><init>()V

    sput-object v0, Lx3/a;->a:La/b;

    goto :goto_22

    :cond_1a
    new-instance v0, La/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/b;-><init>(I)V

    sput-object v0, Lx3/a;->a:La/b;

    :goto_22
    return-void
.end method
