.class public Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;
.super Ljava/lang/Object;
.source "OpenPdcRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final DEFAULT_RETRY_TIME:I = 0x493e0

.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final ORIGIN:Ljava/lang/String; = "Origin"

.field private static final REDIRECT_COUNT:Ljava/lang/String; = "X-XIAOMI-REDIRECT-COUNT"

.field private static final RETRY_AFTER:Ljava/lang/String; = "Retry-After"

.field private static final SUPPORT_REDIRECT:Ljava/lang/String; = "X-XIAOMI-SUPPORT-REDIRECT"

.field private static final TAG:Ljava/lang/String; = "OpenPdcRequest"

.field private static final TIMEOUT:I = 0x7530

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final USER_COUNTRY:Ljava/lang/String; = "X-XIAOMI-USER-COUNTRY"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->convertErrorCode(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static appendUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2c

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-object p0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v1, "?"

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    move-result p0

    .line 25
    const-string v2, "&"

    .line 27
    if-nez p0, :cond_20

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    goto :goto_23

    .line 33
    :cond_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :goto_23
    const/4 p0, 0x1

    .line 37
    invoke-static {p1, v2, p0, v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2c
    new-instance p0, Ljava/lang/NullPointerException;

    .line 47
    const-string p1, "origin is not allowed null"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

.method private static convertErrorCode(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 3

    .line 1
    const/16 v0, 0xc8

    .line 3
    if-eq p0, v0, :cond_6f

    .line 5
    const/16 v0, 0x193

    .line 7
    if-eq p0, v0, :cond_48

    .line 9
    const/16 v0, 0x190

    .line 11
    if-eq p0, v0, :cond_21

    .line 13
    const/16 v0, 0x191

    .line 15
    if-eq p0, v0, :cond_48

    .line 17
    const/16 p1, 0x1f4

    .line 19
    if-eq p0, p1, :cond_1e

    .line 21
    const/16 p1, 0x1f5

    .line 23
    if-eq p0, p1, :cond_1b

    .line 25
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 27
    return-object p0

    .line 28
    :cond_1b
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 30
    return-object p0

    .line 31
    :cond_1e
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 33
    return-object p0

    .line 34
    :cond_21
    packed-switch p1, :pswitch_data_72

    .line 37
    packed-switch p1, :pswitch_data_80

    .line 40
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 42
    return-object p0

    .line 43
    :pswitch_2a  #0x36b5
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 45
    return-object p0

    .line 46
    :pswitch_2d  #0x36b4
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 48
    return-object p0

    .line 49
    :pswitch_30  #0x36b3
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 51
    return-object p0

    .line 52
    :pswitch_33  #0x36b2
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 54
    return-object p0

    .line 55
    :pswitch_36  #0x36b1
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 57
    return-object p0

    .line 58
    :pswitch_39  #0x2afc
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 60
    return-object p0

    .line 61
    :pswitch_3c  #0x2afb
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->NEED_RESYNC:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 63
    return-object p0

    .line 64
    :pswitch_3f  #0x2afa
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 66
    return-object p0

    .line 67
    :pswitch_42  #0x2af9
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 69
    return-object p0

    .line 70
    :pswitch_45  #0x2af8
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 72
    return-object p0

    .line 73
    :cond_48
    packed-switch p1, :pswitch_data_8e

    .line 76
    :pswitch_4b  #0x17706, 0x17709
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 78
    return-object p0

    .line 79
    :pswitch_4e  #0x1770d
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 81
    return-object p0

    .line 82
    :pswitch_51  #0x1770c
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 84
    return-object p0

    .line 85
    :pswitch_54  #0x1770b
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 87
    return-object p0

    .line 88
    :pswitch_57  #0x1770a
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 90
    return-object p0

    .line 91
    :pswitch_5a  #0x17708
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->AUTH_FAILED:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 93
    return-object p0

    .line 94
    :pswitch_5d  #0x17707
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 96
    return-object p0

    .line 97
    :pswitch_60  #0x17705
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 99
    return-object p0

    .line 100
    :pswitch_63  #0x17704
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 102
    return-object p0

    .line 103
    :pswitch_66  #0x17703
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 105
    return-object p0

    .line 106
    :pswitch_69  #0x17702
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 108
    return-object p0

    .line 109
    :pswitch_6c  #0x17701
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 111
    return-object p0

    .line 112
    :cond_6f
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 114
    return-object p0

    .line 115
    :pswitch_data_72
    .packed-switch 0x2af8
        :pswitch_45  #00002af8
        :pswitch_42  #00002af9
        :pswitch_3f  #00002afa
        :pswitch_3c  #00002afb
        :pswitch_39  #00002afc
    .end packed-switch

    .line 129
    :pswitch_data_80
    .packed-switch 0x36b1
        :pswitch_36  #000036b1
        :pswitch_33  #000036b2
        :pswitch_30  #000036b3
        :pswitch_2d  #000036b4
        :pswitch_2a  #000036b5
    .end packed-switch

    .line 143
    :pswitch_data_8e
    .packed-switch 0x17701
        :pswitch_6c  #00017701
        :pswitch_69  #00017702
        :pswitch_66  #00017703
        :pswitch_63  #00017704
        :pswitch_60  #00017705
        :pswitch_4b  #00017706
        :pswitch_5d  #00017707
        :pswitch_5a  #00017708
        :pswitch_4b  #00017709
        :pswitch_57  #0001770a
        :pswitch_54  #0001770b
        :pswitch_51  #0001770c
        :pswitch_4e  #0001770d
    .end packed-switch
.end method

.method private static joinMap(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/StringBuilder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_5b

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    if-lez v0, :cond_1d

    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_1d
    const-string v2, "UTF-8"

    .line 32
    if-eqz p2, :cond_2c

    .line 34
    :try_start_21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 40
    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/String;

    .line 51
    :goto_32
    if-eqz p2, :cond_3f

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    goto :goto_45

    .line 64
    :cond_3f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/String;

    .line 70
    :goto_45
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "="

    .line 75
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_50} :catch_53

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 83
    goto :goto_c

    .line 84
    :catch_53
    const-string v1, "OpenPdcRequest"

    .line 86
    const-string v2, "Cannot encode map values!"

    .line 88
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_c

    .line 92
    :cond_5b
    return-void
.end method

.method public static makeConn(Ljava/lang/String;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/net/ssl/HttpsURLConnection;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 16
    const/16 v1, 0x7530

    .line 18
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 21
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 24
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 27
    if-eqz p1, :cond_25

    .line 29
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->makeCookie(Ljava/util/Map;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "Cookie"

    .line 35
    invoke-virtual {p0, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_25
    return-object p0
.end method

.method private static makeCookie(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "; "

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v1, v2, v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;"
        }
    .end annotation

    .line 1
    const-string v0, "request error"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "request started at "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, " as "

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "OpenPdcRequest"

    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p1, p3}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->appendUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const/4 p3, 0x0

    .line 38
    move v1, p3

    .line 39
    :goto_26
    const/4 v3, 0x0

    .line 40
    :try_start_27
    invoke-static {p1, p4}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 50
    const-string p1, "X-XIAOMI-SUPPORT-REDIRECT"

    .line 52
    const-string v4, "true"

    .line 54
    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string p1, "Origin"

    .line 59
    const-string v4, "Default"

    .line 61
    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string p1, "Content-Type"

    .line 66
    const-string v4, "application/json"

    .line 68
    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-lez v1, :cond_51

    .line 73
    const-string p1, "X-XIAOMI-REDIRECT-COUNT"

    .line 75
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_51
    if-eqz p0, :cond_6b

    .line 84
    const-string p1, "X-XIAOMI-USER-COUNTRY"

    .line 86
    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->getUserCountry()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->getUserAgent()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_6b

    .line 99
    const-string p1, "User-Agent"

    .line 101
    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->getUserAgent()Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_6b
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 111
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    move-result p1
    :try_end_72
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_72} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_72} :catch_192
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_72} :catch_188
    .catchall {:try_start_27 .. :try_end_72} :catchall_186

    .line 115
    const-string v4, "UTF-8"

    .line 117
    if-nez p1, :cond_8f

    .line 119
    :try_start_76
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 122
    move-result-object p1

    .line 123
    new-instance v5, Ljava/io/BufferedOutputStream;

    .line 125
    invoke-direct {v5, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_76 .. :try_end_7f} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7f} :catch_192
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_7f} :catch_188
    .catchall {:try_start_76 .. :try_end_7f} :catchall_186

    .line 128
    :try_start_7f
    invoke-virtual {p5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8a

    .line 135
    :try_start_86
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8f
    .catch Lorg/json/JSONException; {:try_start_86 .. :try_end_89} :catch_188
    .catchall {:try_start_86 .. :try_end_89} :catchall_186

    .line 138
    goto :goto_8f

    .line 139
    :catchall_8a
    move-exception p0

    .line 140
    :try_start_8b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8e
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_8e} :catch_188
    .catchall {:try_start_8b .. :try_end_8e} :catchall_186

    .line 143
    :catch_8e
    :try_start_8e
    throw p0

    .line 144
    :catch_8f
    :cond_8f
    :goto_8f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 147
    move-result p1

    .line 148
    const/16 v5, 0x12d

    .line 150
    if-eq p1, v5, :cond_141

    .line 152
    const/16 v5, 0x12e

    .line 154
    if-eq p1, v5, :cond_141

    .line 156
    const/16 v5, 0x133

    .line 158
    if-eq p1, v5, :cond_141

    .line 160
    const/16 p0, 0x1f7

    .line 162
    if-eq p1, p0, :cond_100

    .line 164
    const/16 p0, 0xc8

    .line 166
    if-ne p1, p0, :cond_ac

    .line 168
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 171
    move-result-object p0

    .line 172
    goto :goto_b0

    .line 173
    :cond_ac
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 176
    move-result-object p0

    .line 177
    :goto_b0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 179
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    const/16 p4, 0x400

    .line 184
    new-array p4, p4, [B

    .line 186
    :goto_b9
    invoke-virtual {p0, p4}, Ljava/io/InputStream;->read([B)I

    .line 189
    move-result p5

    .line 190
    const/4 v1, -0x1

    .line 191
    if-eq p5, v1, :cond_c4

    .line 193
    invoke-virtual {p2, p4, p3, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 196
    goto :goto_b9

    .line 197
    :cond_c4
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 200
    move-result-object p0

    .line 201
    new-instance p2, Ljava/lang/String;

    .line 203
    invoke-direct {p2, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 206
    new-instance p0, Lorg/json/JSONObject;

    .line 208
    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance p4, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 213
    invoke-direct {p4, p1, p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>(ILorg/json/JSONObject;)V

    .line 216
    iget-boolean p0, p4, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 218
    if-nez p0, :cond_fc

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    const-string p5, "Got error: status "

    .line 227
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string p1, " with body "

    .line 235
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object p0

    .line 245
    new-instance p1, Ljava/lang/Throwable;

    .line 247
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 250
    invoke-static {v2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8e .. :try_end_fc} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_fc} :catch_192
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_fc} :catch_188
    .catchall {:try_start_8e .. :try_end_fc} :catchall_186

    .line 253
    :cond_fc
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    return-object p4

    .line 257
    :cond_100
    const/16 p0, 0x12c

    .line 259
    :try_start_102
    const-string p1, "Retry-After"

    .line 261
    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    move-result p2
    :try_end_10c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_102 .. :try_end_10c} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_10c} :catch_192
    .catch Lorg/json/JSONException; {:try_start_102 .. :try_end_10c} :catch_188
    .catchall {:try_start_102 .. :try_end_10c} :catchall_186

    .line 269
    if-nez p2, :cond_116

    .line 271
    :try_start_10e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 278
    move-result p0
    :try_end_116
    .catch Ljava/lang/NumberFormatException; {:try_start_10e .. :try_end_116} :catch_116
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10e .. :try_end_116} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_116} :catch_192
    .catch Lorg/json/JSONException; {:try_start_10e .. :try_end_116} :catch_188
    .catchall {:try_start_10e .. :try_end_116} :catchall_186

    .line 279
    :catch_116
    :cond_116
    :try_start_116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    const-string p2, "Got retry after "

    .line 286
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string p2, " seconds"

    .line 294
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object p1

    .line 301
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 306
    invoke-direct {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>()V

    .line 309
    sget-object p2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 311
    iput-object p2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 313
    mul-int/lit16 p0, p0, 0x3e8

    .line 315
    int-to-long p4, p0

    .line 316
    iput-wide p4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J
    :try_end_13d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_116 .. :try_end_13d} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_13d} :catch_192
    .catch Lorg/json/JSONException; {:try_start_116 .. :try_end_13d} :catch_188
    .catchall {:try_start_116 .. :try_end_13d} :catchall_186

    .line 318
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 321
    return-object p1

    .line 322
    :cond_141
    :try_start_141
    const-string v4, "Location"

    .line 324
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    move-result-object v4

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    const-string v6, "Got "

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string p1, " redirection to "

    .line 343
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    move-result-object p1

    .line 353
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_141 .. :try_end_163} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_163} :catch_192
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_163} :catch_188
    .catchall {:try_start_141 .. :try_end_163} :catchall_186

    .line 356
    if-eqz p0, :cond_180

    .line 358
    :try_start_165
    new-instance p1, Ljava/net/URI;

    .line 360
    invoke-direct {p1, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 366
    move-result-object p1

    .line 367
    invoke-interface {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->setHost(Ljava/lang/String;)V

    .line 370
    add-int/lit8 v1, v1, 0x1

    .line 372
    const/16 p1, 0xf

    .line 374
    if-gt v1, p1, :cond_178

    .line 376
    goto :goto_180

    .line 377
    :cond_178
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 379
    const-string v5, "Redirect Times Exceed 15"

    .line 381
    invoke-direct {p1, v5}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 384
    throw p1
    :try_end_180
    .catch Ljava/net/URISyntaxException; {:try_start_165 .. :try_end_180} :catch_180
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_165 .. :try_end_180} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_180} :catch_192
    .catch Lorg/json/JSONException; {:try_start_165 .. :try_end_180} :catch_188
    .catchall {:try_start_165 .. :try_end_180} :catchall_186

    .line 385
    :catch_180
    :cond_180
    :goto_180
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    move-object p1, v4

    .line 389
    goto/16 :goto_26

    .line 391
    :catchall_186
    move-exception p0

    .line 392
    goto :goto_1c6

    .line 393
    :catch_188
    move-exception p0

    .line 394
    :try_start_189
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 399
    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/Throwable;)V

    .line 402
    throw p1

    .line 403
    :catch_192
    move-exception p0

    .line 404
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    invoke-static {p0}, Lcom/xiaomi/opensdk/exception/RetriableException;->isRetriableException(Ljava/lang/Throwable;)Z

    .line 410
    move-result p1

    .line 411
    if-eqz p1, :cond_1b6

    .line 413
    new-instance p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 415
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>()V

    .line 418
    iput-boolean p3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 420
    sget-object p1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 422
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 424
    const-string p1, "error"

    .line 426
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 428
    const-wide/32 p1, 0x493e0

    .line 431
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J
    :try_end_1b0
    .catchall {:try_start_189 .. :try_end_1b0} :catchall_186

    .line 433
    if-eqz v3, :cond_1b5

    .line 435
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 438
    :cond_1b5
    return-object p0

    .line 439
    :cond_1b6
    :try_start_1b6
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 441
    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/Throwable;)V

    .line 444
    throw p1

    .line 445
    :catch_1bc
    move-exception p0

    .line 446
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 451
    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/Throwable;)V

    .line 454
    throw p1
    :try_end_1c6
    .catchall {:try_start_1b6 .. :try_end_1c6} :catchall_186

    .line 455
    :goto_1c6
    if-eqz v3, :cond_1cb

    .line 457
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 460
    :cond_1cb
    throw p0
.end method
