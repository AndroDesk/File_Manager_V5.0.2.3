.class public final Lw3/b;
.super La/b;
.source "BindAccountServiceCompat_V18.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, La/b;-><init>(I)V

    .line 5
    return-void
.end method


# virtual methods
.method public final j(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.xiaomi.account"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v0, p2, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_25

    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 22
    const-string v3, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    .line 24
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v0, p2, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v2, 0x0

    .line 38
    :cond_25
    :goto_25
    return v2
.end method
