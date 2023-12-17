.class public Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;
.super Ljava/lang/Object;
.source "AccountSafeSharedPreferences.java"


# static fields
.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final sSharedPrefsLockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->sSharedPrefsLockMap:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->getLock(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Landroid/content/SharedPreferences;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->checkAndClearIfAccountChangedLocked(Landroid/content/SharedPreferences;)V

    .line 4
    return-void
.end method

.method private static checkAndClearIfAccountChangedLocked(Landroid/content/SharedPreferences;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->getAccountOrNullLocked(Landroid/content/SharedPreferences;)Landroid/accounts/Account;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    const-string v2, "account_type"

    .line 18
    const-string v3, "account_name"

    .line 20
    if-nez v0, :cond_27

    .line 22
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    move-result-object p0

    .line 26
    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 28
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object v0, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 33
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    goto :goto_41

    .line 40
    :cond_27
    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_41

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 53
    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 55
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object v0, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 60
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    :cond_41
    :goto_41
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/utils/ISharedPreferences;
    .registers 3

    .line 1
    if-eqz p0, :cond_16

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    new-instance v0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;

    .line 11
    invoke-direct {v0, p0, p1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    return-object v0

    .line 15
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string p1, "spName can not be empty"

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 23
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p1, "context == null"

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method private static getAccountOrNullLocked(Landroid/content/SharedPreferences;)Landroid/accounts/Account;
    .registers 4

    .line 1
    const-string v0, "account_name"

    .line 3
    const-string v1, ""

    .line 5
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v2, "account_type"

    .line 11
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_21

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    new-instance v1, Landroid/accounts/Account;

    .line 30
    invoke-direct {v1, v0, p0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-object v1

    .line 34
    :cond_21
    :goto_21
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method private static declared-synchronized getLock(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 1
    const-class v0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->sSharedPrefsLockMap:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_13

    .line 12
    new-instance v2, Ljava/lang/Object;

    .line 14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_13
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
.end method
