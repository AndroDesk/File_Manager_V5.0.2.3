.class public Lcom/miui/maml/util/BaseMobileDataUtils;
.super Ljava/lang/Object;
.source "BaseMobileDataUtils.java"


# static fields
.field public static final MOBILE_DATA:Ljava/lang/String; = "mobile_data"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileDataUri()Landroid/net/Uri;
    .registers 2

    .line 1
    const-string v0, "mobile_data"

    .line 3
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isMobileEnable(Landroid/content/Context;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "connectivity"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "getMobileDataEnabled"

    .line 16
    new-array v3, v0, [Ljava/lang/Class;

    .line 18
    new-array v4, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {v1, p1, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 30
    return p1

    .line 31
    :catch_1e
    move-exception p1

    .line 32
    const-string v1, "Invoke | ConnectivityManager_getMobileDataEnabled() occur EXCEPTION: "

    .line 34
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    const-string v1, "BaseMobileDataUtils"

    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return v0
.end method

.method public onMobileDataChange(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
