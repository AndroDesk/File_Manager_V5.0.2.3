.class public Lmiui/cloud/util/BuildUtil;
.super Ljava/lang/Object;
.source "BuildUtil.java"


# static fields
.field private static final KEY_ACCOUNT_INTERNATIONAL:Ljava/lang/String; = "key_account_international"

.field private static final TAG:Ljava/lang/String; = "BuildUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static isInternationalBuild()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 3
    return v0
.end method

.method public static isInternationalBuildOrAccount(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 7

    .line 1
    invoke-static {}, Lmiui/cloud/util/BuildUtil;->isInternationalBuild()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "key_account_international"

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v2, 0x2

    .line 25
    if-nez p1, :cond_40

    .line 27
    :try_start_1a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v2
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_22} :catch_23

    .line 35
    goto :goto_40

    .line 36
    :catch_23
    move-exception p0

    .line 37
    new-array p1, v2, [Ljava/lang/Object;

    .line 39
    const-string v3, "BuildUtil"

    .line 41
    aput-object v3, p1, v0

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v4, "get account type error "

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    aput-object p0, p1, v1

    .line 62
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 65
    :cond_40
    :goto_40
    if-ne v2, v1, :cond_43

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move v1, v0

    .line 69
    :goto_44
    return v1
.end method
