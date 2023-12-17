.class public Lcom/xiaomi/micloudsdk/utils/CloudUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


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

.method public static checkWifiAvailability(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/NetworkUtils;->checkWifiAvailability(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static concatAll(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3c

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_3c

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_37

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1f

    .line 31
    goto :goto_12

    .line 32
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2a

    .line 42
    goto :goto_12

    .line 43
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 46
    move-result v2

    .line 47
    if-lez v2, :cond_33

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    goto :goto_12

    .line 56
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3c
    :goto_3c
    const-string p0, ""

    .line 63
    return-object p0
.end method

.method public static getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/CloudUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

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

.method public static handle5xx(Landroid/content/Context;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)I
    .registers 5

    .line 1
    iget p0, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 3
    div-int/lit8 v0, p0, 0x64

    .line 5
    const-string v1, "Micloud"

    .line 7
    const/4 v2, 0x5

    .line 8
    if-ne v0, v2, :cond_29

    .line 10
    const/16 v0, 0x2710

    .line 12
    const/16 v2, 0x1f7

    .line 14
    if-ne p0, v2, :cond_14

    .line 16
    iget p0, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 18
    if-lez p0, :cond_14

    .line 20
    move v0, p0

    .line 21
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string p1, "Http 5xx error. retryTime: "

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v0

    .line 42
    :cond_29
    const-string p0, "Unrecognized server error "

    .line 44
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object p0

    .line 48
    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 p0, 0x0

    .line 61
    return p0
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
