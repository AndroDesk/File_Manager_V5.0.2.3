.class public Lcom/micloud/midrive/utils/CheckAccountHelper;
.super Ljava/lang/Object;
.source "CheckAccountHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "CheckAccountHelper"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static finishActivityIfAccountNullOrChange(Landroid/app/Activity;Landroid/accounts/Account;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_17

    .line 16
    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    return v2

    .line 24
    :cond_17
    :goto_17
    new-array p1, v2, [Ljava/lang/Object;

    .line 26
    const-string v1, "No Xiaomi account available or account changed! Finish current activity."

    .line 28
    invoke-static {v0, v1, p1}, Lmiui/cloud/common/XLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public static getAvailableAccountOrFinish(Landroid/app/Activity;)Landroid/accounts/Account;
    .registers 2

    .line 1
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    :cond_9
    return-object v0
.end method

.method public static getCurrentAccount()Landroid/accounts/Account;
    .registers 1

    .line 1
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
