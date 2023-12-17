.class public Lcom/micloud/midrive/utils/CheckAccountHelper;
.super Ljava/lang/Object;
.source "CheckAccountHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CheckAccountHelper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityIfAccountNullOrChange(Landroid/app/Activity;Landroid/accounts/Account;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_17

    :cond_16
    return v2

    :cond_17
    :goto_17
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "No Xiaomi account available or account changed! Finish current activity."

    invoke-static {v0, v1, p1}, Lmiui/cloud/common/XLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public static getAvailableAccountOrFinish(Landroid/app/Activity;)Landroid/accounts/Account;
    .registers 2

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-object v0
.end method

.method public static getCurrentAccount()Landroid/accounts/Account;
    .registers 1

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method
