.class public Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# static fields
.field public static final CODE_IS_INTERNATIONAL_ACCOUNT:I

.field public static final CODE_NOT_INTERNATIONAL_ACCOUNT:I

.field public static final CODE_UNKOWN_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->CODE_IS_INTERNATIONAL_ACCOUNT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->CODE_NOT_INTERNATIONAL_ACCOUNT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->CODE_UNKOWN_ERROR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const-string v0, "*/*"

    :goto_17
    return-object v0
.end method

.method public static getRelocatedHost(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getRelocatedHost(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXiaomiAccount()Landroid/accounts/Account;
    .registers 1

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 1

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public static isInternationalAccount(Z)I
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->isInternationalAccount(Z)I

    move-result p0

    return p0
.end method

.method public static updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
