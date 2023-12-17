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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_25

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mContext:Landroid/content/Context;

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mUserId:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    return-void

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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-direct {v0, p1, p2, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v0, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->updateToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mUserId:Ljava/lang/String;

    return-void
.end method

.method private initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "micfile"

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    if-eqz v0, :cond_42

    :try_start_18
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    if-eqz v0, :cond_56

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->updateToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    return-object v0

    :cond_3c
    const-string v0, "getAuthToken: future getResult is null"

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_56

    :cond_42
    const-string v0, "getAuthToken: future is null"

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/accounts/OperationCanceledException; {:try_start_18 .. :try_end_47} :catch_52
    .catch Landroid/accounts/AuthenticatorException; {:try_start_18 .. :try_end_47} :catch_4d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_47} :catch_48

    goto :goto_56

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_56

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_56

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_56
    :goto_56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to get auth token"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateAuthToken()V
    .registers 4

    const-string v0, "invalidateAuthToken:MiCloud rich media token expired."

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    return-void
.end method

.method public static final log(Ljava/lang/String;)V
    .registers 3

    const-string v0, "MiCloudRichMediaManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method


# virtual methods
.method public download2(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 8

    const-string v0, "download:"

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

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

    iget v2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_6a

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6a

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->invalidateAuthToken()V

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

    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :catch_42
    move-exception p1

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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_85

    :cond_6a
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p1

    :catch_72
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    :goto_85
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1
.end method

.method public download2(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    const-string v0, "download:"

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

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

    iget v2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_6a

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6a

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->invalidateAuthToken()V

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

    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :catch_42
    move-exception p1

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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_85

    :cond_6a
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p1

    :catch_72
    move-exception p1

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

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    :try_start_c
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromPublicUrl(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_12
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_c .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 3

    const/4 v0, 0x0

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

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    const/4 v1, 0x0

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

    iget v3, v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v4, 0x191

    if-ne v3, v4, :cond_67

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_67

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->invalidateAuthToken()V

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

    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :catch_3f
    move-exception p1

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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    :goto_66
    return-object v1

    :cond_67
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p2, v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p1

    :catch_6f
    move-exception p1

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

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mMiCloudRichUtils:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->updateToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    return-void
.end method

.method public upload(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 3

    const/4 v0, 0x0

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

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->initAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

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

    iget v2, v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_3e

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_3e

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->invalidateAuthToken()V

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

    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p2

    :catch_2a
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_5b

    :cond_3e
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudRichMediaServerException;-><init>(I)V

    throw p1

    :catch_48
    move-exception p1

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
