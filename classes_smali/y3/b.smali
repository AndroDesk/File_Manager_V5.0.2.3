.class public final Ly3/b;
.super Ljava/lang/Object;
.source "RelocationCacheCompat.java"


# static fields
.field public static final a:Ly3/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_20

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RomCountryUtil;->getRomCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ly3/d;

    invoke-direct {v0}, Ly3/d;-><init>()V

    sput-object v0, Ly3/b;->a:Ly3/c;

    goto :goto_27

    :cond_18
    new-instance v0, Ly3/c;

    invoke-direct {v0}, Ly3/c;-><init>()V

    sput-object v0, Ly3/b;->a:Ly3/c;

    goto :goto_27

    :cond_20
    new-instance v0, Ly3/c;

    invoke-direct {v0}, Ly3/c;-><init>()V

    sput-object v0, Ly3/b;->a:Ly3/c;

    :goto_27
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ly3/b;->a:Ly3/c;

    invoke-interface {v0, p0, p1}, Ly3/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ly3/b;->a:Ly3/c;

    invoke-interface {v0, p0, p1}, Ly3/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ly3/b;->a:Ly3/c;

    invoke-interface {v0, p0}, Ly3/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
