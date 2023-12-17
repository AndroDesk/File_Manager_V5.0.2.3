.class public Lcom/miui/maml/util/MobileDataUtils;
.super Lcom/miui/maml/util/BaseMobileDataUtils;
.source "MobileDataUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/BaseMobileDataUtils;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/miui/maml/util/MobileDataUtils;
    .registers 1

    .line 1
    :try_start_0
    const-string v0, "miui.msim.util.MSimMobileDataUtils"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/maml/util/MobileDataUtils;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    return-object v0

    .line 14
    :catch_d
    new-instance v0, Lcom/miui/maml/util/MobileDataUtils;

    .line 16
    invoke-direct {v0}, Lcom/miui/maml/util/MobileDataUtils;-><init>()V

    .line 19
    return-object v0
.end method


# virtual methods
.method public enableMobileData(Landroid/content/Context;Z)V
    .registers 8

    .line 1
    :try_start_0
    const-string p2, "connectivity"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object p2

    .line 13
    const-string v0, "setMobileDataEnabled"

    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v2, v1, [Ljava/lang/Class;

    .line 18
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v3, v2, v4

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    aput-object v3, v1, v4

    .line 29
    invoke-static {p2, p1, v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 32
    goto :goto_37

    .line 33
    :catch_20
    move-exception p1

    .line 34
    const-string p2, "Invoke | ConnectivityManager_enableMobileData() occur EXCEPTION: "

    .line 36
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    const-string p2, "BaseMobileDataUtils"

    .line 53
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_37
    return-void
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/util/BaseMobileDataUtils;->getMobileDataUri()Landroid/net/Uri;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 13
    return-void
.end method
