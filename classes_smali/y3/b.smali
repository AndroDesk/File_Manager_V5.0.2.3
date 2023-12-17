.class public final Ly3/b;
.super Ljava/lang/Object;
.source "RelocationCacheCompat.java"


# static fields
.field public static final a:Ly3/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    .line 3
    const/16 v1, 0x12

    .line 5
    if-lt v0, v1, :cond_20

    .line 7
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RomCountryUtil;->getRomCountry()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_18

    .line 17
    new-instance v0, Ly3/d;

    .line 19
    invoke-direct {v0}, Ly3/d;-><init>()V

    .line 22
    sput-object v0, Ly3/b;->a:Ly3/c;

    .line 24
    goto :goto_27

    .line 25
    :cond_18
    new-instance v0, Ly3/c;

    .line 27
    invoke-direct {v0}, Ly3/c;-><init>()V

    .line 30
    sput-object v0, Ly3/b;->a:Ly3/c;

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    new-instance v0, Ly3/c;

    .line 35
    invoke-direct {v0}, Ly3/c;-><init>()V

    .line 38
    sput-object v0, Ly3/b;->a:Ly3/c;

    .line 40
    :goto_27
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ly3/b;->a:Ly3/c;

    .line 3
    invoke-interface {v0, p0, p1}, Ly3/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ly3/b;->a:Ly3/c;

    .line 3
    invoke-interface {v0, p0, p1}, Ly3/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Ly3/b;->a:Ly3/c;

    .line 3
    invoke-interface {v0, p0}, Ly3/a;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
