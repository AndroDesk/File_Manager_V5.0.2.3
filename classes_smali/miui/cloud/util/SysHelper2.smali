.class public Lmiui/cloud/util/SysHelper2;
.super Lmiui/cloud/util/SysHelper;
.source "SysHelper2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiui/cloud/util/SysHelper;-><init>()V

    .line 4
    return-void
.end method

.method public static getCustomSyncSettings(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, ".SYNC_SETTINGS"

    .line 5
    invoke-static {p2, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, "account"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    const-string p1, "authority"

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object p0

    .line 26
    const/16 p1, 0x20

    .line 28
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_26

    .line 38
    const/4 v0, 0x0

    .line 39
    :cond_26
    return-object v0
.end method
