.class public final Lx3/a;
.super Ljava/lang/Object;
.source "GdprUtilsCompat.java"


# static fields
.field public static final a:La/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    .line 3
    const/16 v1, 0x18

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    new-instance v0, Lx3/c;

    .line 9
    invoke-direct {v0}, Lx3/c;-><init>()V

    .line 12
    sput-object v0, Lx3/a;->a:La/b;

    .line 14
    goto :goto_22

    .line 15
    :cond_e
    const/16 v1, 0x17

    .line 17
    if-lt v0, v1, :cond_1a

    .line 19
    new-instance v0, Lx3/b;

    .line 21
    invoke-direct {v0}, Lx3/b;-><init>()V

    .line 24
    sput-object v0, Lx3/a;->a:La/b;

    .line 26
    goto :goto_22

    .line 27
    :cond_1a
    new-instance v0, La/b;

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, v1}, La/b;-><init>(I)V

    .line 33
    sput-object v0, Lx3/a;->a:La/b;

    .line 35
    :goto_22
    return-void
.end method
