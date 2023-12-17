.class public Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# static fields
.field public static final CODE_IS_INTERNATIONAL_ACCOUNT:I = 0x1

.field public static final CODE_NOT_INTERNATIONAL_ACCOUNT:I = 0x0

.field public static final CODE_UNKOWN_ERROR:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_12

    .line 15
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    if-eqz v0, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const-string v0, "*/*"

    .line 24
    :goto_17
    return-object v0
.end method

.method public static getRelocatedHost(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getRelocatedHost(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getUserAgent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getXiaomiAccount()Landroid/accounts/Account;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 1

    .line 2
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public static isInternationalAccount(Z)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->isInternationalAccount(Z)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
