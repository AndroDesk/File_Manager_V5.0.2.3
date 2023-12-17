.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;
.super Ljava/lang/Object;
.source "MiCloudRichMediaManager2.java"


# static fields
.field private static final AUTH_TOKEN_TYPE:Ljava/lang/String; = "micfile"

.field private static final TAG:Ljava/lang/String; = "MiCloudRichMediaManager"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

.field private mContext:Landroid/content/Context;

.field private mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_25

    .line 9
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 10
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    .line 11
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mContext:Landroid/content/Context;

    .line 12
    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mUserId:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    return-void

    .line 14
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The account should not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mContext:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 5
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-direct {v0, p1, p2, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    .line 6
    invoke-virtual {v0, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->updateToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    .line 7
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mUserId:Ljava/lang/String;

    return-void
.end method

.method private initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v3, "micfile"

    .line 19
    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_42

    .line 25
    :try_start_18
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/os/Bundle;

    .line 31
    if-eqz v1, :cond_3c

    .line 33
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/os/Bundle;

    .line 39
    const-string v1, "authtoken"

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 51
    if-eqz v0, :cond_56

    .line 53
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    .line 55
    invoke-virtual {v1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->updateToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    .line 58
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 60
    return-object v0

    .line 61
    :cond_3c
    const-string v0, "getAuthToken: future getResult is null"

    .line 63
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 66
    goto :goto_56

    .line 67
    :cond_42
    const-string v0, "getAuthToken: future is null"

    .line 69
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/accounts/OperationCanceledException; {:try_start_18 .. :try_end_47} :catch_52
    .catch Landroid/accounts/AuthenticatorException; {:try_start_18 .. :try_end_47} :catch_4d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_47} :catch_48

    .line 72
    goto :goto_56

    .line 73
    :catch_48
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    goto :goto_56

    .line 78
    :catch_4d
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    goto :goto_56

    .line 83
    :catch_52
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    :cond_56
    :goto_56
    new-instance v0, Ljava/io/IOException;

    .line 89
    const-string v1, "failed to get auth token"

    .line 91
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    throw v0
.end method

.method private invalidateAuthToken()V
    .registers 4

    .line 1
    const-string v0, "invalidateAuthToken:MiCloud rich media token expired."

    .line 3
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 8
    if-eqz v0, :cond_1c

    .line 10
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    .line 18
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 22
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 32
    return-void
.end method

.method public static final log(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "MiCloudRichMediaManager"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_c

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_c
    return-void
.end method


# virtual methods
.method public download2(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 8

    const-string v0, "download:"

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 2
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->download2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1
    :try_end_d
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_5 .. :try_end_d} :catch_72
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_5 .. :try_end_d} :catch_22
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_85

    :catch_22
    move-exception v1

    .line 4
    iget v2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_6a

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6a

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->invalidateAuthToken()V

    .line 6
    :try_start_30
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->download2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1
    :try_end_38
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_30 .. :try_end_38} :catch_56
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_38} :catch_42
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_30 .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p1

    .line 7
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :catch_42
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_85

    :catch_56
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_85

    .line 10
    :cond_6a
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p1

    :catch_72
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 12
    :goto_85
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1
.end method

.method public download2(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    const-string v0, "download:"

    .line 13
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 14
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->download2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_d
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_5 .. :try_end_d} :catch_72
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_5 .. :try_end_d} :catch_22
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_85

    :catch_22
    move-exception v1

    .line 16
    iget v2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_6a

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6a

    .line 17
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->invalidateAuthToken()V

    .line 18
    :try_start_30
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->download2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_38
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_30 .. :try_end_38} :catch_56
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_38} :catch_42
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_30 .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p1

    .line 19
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :catch_42
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_85

    :catch_56
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_85

    .line 22
    :cond_6a
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p1

    :catch_72
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    :goto_85
    const/4 p1, 0x0

    return-object p1
.end method

.method public downloadFromPublicUrl(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1c

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1c

    .line 13
    :try_start_c
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromPublicUrl(Ljava/lang/String;Ljava/lang/String;)[B

    .line 18
    move-result-object p1
    :try_end_12
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_c .. :try_end_12} :catch_13

    .line 19
    return-object p1

    .line 20
    :catch_13
    move-exception p1

    .line 21
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    .line 23
    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 25
    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    .line 28
    throw p2

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method public getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;"
        }
    .end annotation

    const-string v0, "getFileId:"

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    const/4 v1, 0x0

    .line 3
    :try_start_6
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p1
    :try_end_c
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_6 .. :try_end_c} :catch_6f
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_6 .. :try_end_c} :catch_21
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_66

    :catch_21
    move-exception v2

    .line 5
    iget v3, v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v4, 0x191

    if-ne v3, v4, :cond_67

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_67

    .line 6
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->invalidateAuthToken()V

    .line 7
    :try_start_2f
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p1
    :try_end_35
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_2f .. :try_end_35} :catch_53
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_35} :catch_3f
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_2f .. :try_end_35} :catch_36

    return-object p1

    :catch_36
    move-exception p1

    .line 8
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :catch_3f
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_66

    :catch_53
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    :goto_66
    return-object v1

    .line 11
    :cond_67
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p2, v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p1

    :catch_6f
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public updateAuthToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->updateToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    .line 6
    return-void
.end method

.method public upload(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->upload(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method public upload(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;"
        }
    .end annotation

    const-string v0, "upload:"

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 3
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->upload(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p1
    :try_end_b
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_5 .. :try_end_b} :catch_48
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_5 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception v1

    .line 4
    iget v2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_3e

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_3e

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->invalidateAuthToken()V

    .line 6
    :try_start_1a
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->upload(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p1
    :try_end_20
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_1a .. :try_end_20} :catch_2a
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_1a .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    .line 7
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :catch_2a
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_5b

    .line 9
    :cond_3e
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p1

    :catch_48
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    :goto_5b
    const/4 p1, 0x0

    return-object p1
.end method
