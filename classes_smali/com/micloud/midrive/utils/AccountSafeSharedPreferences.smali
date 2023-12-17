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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->sSharedPrefsLockMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->getLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroid/content/SharedPreferences;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->checkAndClearIfAccountChangedLocked(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private static checkAndClearIfAccountChangedLocked(Landroid/content/SharedPreferences;)V
    .registers 5

    invoke-static {p0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->getAccountOrNullLocked(Landroid/content/SharedPreferences;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    const-string v2, "account_type"

    const-string v3, "account_name"

    if-nez v0, :cond_27

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_41

    :cond_27
    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_41
    :goto_41
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/utils/ISharedPreferences;
    .registers 3

    if-eqz p0, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;

    invoke-direct {v0, p0, p1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spName can not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAccountOrNullLocked(Landroid/content/SharedPreferences;)Landroid/accounts/Account;
    .registers 4

    const-string v0, "account_name"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "account_type"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v0, p0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized getLock(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-class v0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->sSharedPrefsLockMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method
