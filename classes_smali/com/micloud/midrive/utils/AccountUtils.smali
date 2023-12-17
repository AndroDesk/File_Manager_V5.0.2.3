.class public Lcom/micloud/midrive/utils/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountUtils"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "private constructor of AccountUtils"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static getAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 3

    .line 1
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_d

    .line 7
    const-string v0, "AccountUtils"

    .line 9
    const-string v1, "Account is null!"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_d
    return-object p0
.end method

.method public static getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "AccountUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    :try_start_5
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 9
    move-result-object p0

    .line 10
    const-string v4, "encrypted_user_id"

    .line 12
    invoke-virtual {p0, p1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_f} :catch_10

    .line 16
    goto :goto_2d

    .line 17
    :catch_10
    move-exception p0

    .line 18
    new-array p1, v3, [Ljava/lang/Object;

    .line 20
    aput-object v0, p1, v2

    .line 22
    const-string v4, "throw exception when getting cUserId : "

    .line 24
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    aput-object p0, p1, v1

    .line 41
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 44
    const-string p0, ""

    .line 46
    :goto_2d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3e

    .line 52
    new-array p1, v3, [Ljava/lang/Object;

    .line 54
    aput-object v0, p1, v2

    .line 56
    const-string v0, "empty getCUserId returned"

    .line 58
    aput-object v0, p1, v1

    .line 60
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 63
    :cond_3e
    return-object p0
.end method
