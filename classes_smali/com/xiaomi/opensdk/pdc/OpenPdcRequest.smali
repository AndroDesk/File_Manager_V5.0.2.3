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

.field private static final DEFAULT_RETRY_TIME:I

.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final ORIGIN:Ljava/lang/String; = "Origin"

.field private static final REDIRECT_COUNT:Ljava/lang/String; = "X-XIAOMI-REDIRECT-COUNT"

.field private static final RETRY_AFTER:Ljava/lang/String; = "Retry-After"

.field private static final SUPPORT_REDIRECT:Ljava/lang/String; = "X-XIAOMI-SUPPORT-REDIRECT"

.field private static final TAG:Ljava/lang/String; = "OpenPdcRequest"

.field private static final TIMEOUT:I

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final USER_COUNTRY:Ljava/lang/String; = "X-XIAOMI-USER-COUNTRY"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xdbe76

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->DEFAULT_RETRY_TIME:I

    const v0, 0x958a6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->convertErrorCode(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object p0

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

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v2, "&"

    if-nez p0, :cond_20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_23
    const/4 p0, 0x1

    invoke-static {p1, v2, p0, v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "origin is not allowed null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static convertErrorCode(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 3

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_6f

    const/16 v0, 0x193

    if-eq p0, v0, :cond_48

    const/16 v0, 0x190

    if-eq p0, v0, :cond_21

    const/16 v0, 0x191

    if-eq p0, v0, :cond_48

    const/16 p1, 0x1f4

    if-eq p0, p1, :cond_1e

    const/16 p1, 0x1f5

    if-eq p0, p1, :cond_1b

    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :cond_1b
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :cond_1e
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :cond_21
    packed-switch p1, :pswitch_data_72

    packed-switch p1, :pswitch_data_80

    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_2a  #0x36b5
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_2d  #0x36b4
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_30  #0x36b3
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_33  #0x36b2
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_36  #0x36b1
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_39  #0x2afc
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_3c  #0x2afb
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->NEED_RESYNC:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_3f  #0x2afa
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_42  #0x2af9
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_45  #0x2af8
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :cond_48
    packed-switch p1, :pswitch_data_8e

    :pswitch_4b  #0x17706, 0x17709
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_4e  #0x1770d
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_51  #0x1770c
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_54  #0x1770b
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_57  #0x1770a
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_5a  #0x17708
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->AUTH_FAILED:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_5d  #0x17707
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_60  #0x17705
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_63  #0x17704
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_66  #0x17703
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_69  #0x17702
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_6c  #0x17701
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :cond_6f
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_data_72
    .packed-switch 0x2af8
        :pswitch_45  #00002af8
        :pswitch_42  #00002af9
        :pswitch_3f  #00002afa
        :pswitch_3c  #00002afb
        :pswitch_39  #00002afc
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x36b1
        :pswitch_36  #000036b1
        :pswitch_33  #000036b2
        :pswitch_30  #000036b3
        :pswitch_2d  #000036b4
        :pswitch_2a  #000036b5
    .end packed-switch

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

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-lez v0, :cond_1d

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v2, "UTF-8"

    if-eqz p2, :cond_2c

    :try_start_21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :cond_2c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_32
    if-eqz p2, :cond_3f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_45

    :cond_3f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_45
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_50} :catch_53

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catch_53
    const-string v1, "OpenPdcRequest"

    const-string v2, "Cannot encode map values!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

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

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v1, 0x7530

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    if-eqz p1, :cond_25

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->makeCookie(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cookie"

    invoke-virtual {p0, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "; "

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    const-string v0, "request error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request started at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenPdcRequest"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p3}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->appendUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    move v1, p3

    :goto_26
    const/4 v3, 0x0

    :try_start_27
    invoke-static {p1, p4}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string p1, "X-XIAOMI-SUPPORT-REDIRECT"

    const-string v4, "true"

    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Origin"

    const-string v4, "Default"

    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_51

    const-string p1, "X-XIAOMI-REDIRECT-COUNT"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    if-eqz p0, :cond_6b

    const-string p1, "X-XIAOMI-USER-COUNTRY"

    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->getUserCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6b

    const-string p1, "User-Agent"

    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_72
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_72} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_72} :catch_192
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_72} :catch_188
    .catchall {:try_start_27 .. :try_end_72} :catchall_186

    const-string v4, "UTF-8"

    if-nez p1, :cond_8f

    :try_start_76
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_76 .. :try_end_7f} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7f} :catch_192
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_7f} :catch_188
    .catchall {:try_start_76 .. :try_end_7f} :catchall_186

    :try_start_7f
    invoke-virtual {p5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8a

    :try_start_86
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8f
    .catch Lorg/json/JSONException; {:try_start_86 .. :try_end_89} :catch_188
    .catchall {:try_start_86 .. :try_end_89} :catchall_186

    goto :goto_8f

    :catchall_8a
    move-exception p0

    :try_start_8b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8e
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_8e} :catch_188
    .catchall {:try_start_8b .. :try_end_8e} :catchall_186

    :catch_8e
    :try_start_8e
    throw p0

    :catch_8f
    :cond_8f
    :goto_8f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v5, 0x12d

    if-eq p1, v5, :cond_141

    const/16 v5, 0x12e

    if-eq p1, v5, :cond_141

    const/16 v5, 0x133

    if-eq p1, v5, :cond_141

    const/16 p0, 0x1f7

    if-eq p1, p0, :cond_100

    const/16 p0, 0xc8

    if-ne p1, p0, :cond_ac

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_b0

    :cond_ac
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_b0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p4, 0x400

    new-array p4, p4, [B

    :goto_b9
    invoke-virtual {p0, p4}, Ljava/io/InputStream;->read([B)I

    move-result p5

    const/4 v1, -0x1

    if-eq p5, v1, :cond_c4

    invoke-virtual {p2, p4, p3, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b9

    :cond_c4
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p4, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    invoke-direct {p4, p1, p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>(ILorg/json/JSONObject;)V

    iget-boolean p0, p4, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    if-nez p0, :cond_fc

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Got error: status "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with body "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8e .. :try_end_fc} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_fc} :catch_192
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_fc} :catch_188
    .catchall {:try_start_8e .. :try_end_fc} :catchall_186

    :cond_fc
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p4

    :cond_100
    const/16 p0, 0x12c

    :try_start_102
    const-string p1, "Retry-After"

    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_10c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_102 .. :try_end_10c} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_10c} :catch_192
    .catch Lorg/json/JSONException; {:try_start_102 .. :try_end_10c} :catch_188
    .catchall {:try_start_102 .. :try_end_10c} :catchall_186

    if-nez p2, :cond_116

    :try_start_10e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_116
    .catch Ljava/lang/NumberFormatException; {:try_start_10e .. :try_end_116} :catch_116
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10e .. :try_end_116} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_116} :catch_192
    .catch Lorg/json/JSONException; {:try_start_10e .. :try_end_116} :catch_188
    .catchall {:try_start_10e .. :try_end_116} :catchall_186

    :catch_116
    :cond_116
    :try_start_116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got retry after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " seconds"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    invoke-direct {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>()V

    sget-object p2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long p4, p0

    iput-wide p4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J
    :try_end_13d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_116 .. :try_end_13d} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_13d} :catch_192
    .catch Lorg/json/JSONException; {:try_start_116 .. :try_end_13d} :catch_188
    .catchall {:try_start_116 .. :try_end_13d} :catchall_186

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_141
    :try_start_141
    const-string v4, "Location"

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " redirection to "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_141 .. :try_end_163} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_163} :catch_192
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_163} :catch_188
    .catchall {:try_start_141 .. :try_end_163} :catchall_186

    if-eqz p0, :cond_180

    :try_start_165
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->setHost(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const/16 p1, 0xf

    if-gt v1, p1, :cond_178

    goto :goto_180

    :cond_178
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    const-string v5, "Redirect Times Exceed 15"

    invoke-direct {p1, v5}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_180
    .catch Ljava/net/URISyntaxException; {:try_start_165 .. :try_end_180} :catch_180
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_165 .. :try_end_180} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_180} :catch_192
    .catch Lorg/json/JSONException; {:try_start_165 .. :try_end_180} :catch_188
    .catchall {:try_start_165 .. :try_end_180} :catchall_186

    :catch_180
    :cond_180
    :goto_180
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p1, v4

    goto/16 :goto_26

    :catchall_186
    move-exception p0

    goto :goto_1c6

    :catch_188
    move-exception p0

    :try_start_189
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_192
    move-exception p0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/xiaomi/opensdk/exception/RetriableException;->isRetriableException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1b6

    new-instance p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>()V

    iput-boolean p3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    sget-object p1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string p1, "error"

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J
    :try_end_1b0
    .catchall {:try_start_189 .. :try_end_1b0} :catchall_186

    if-eqz v3, :cond_1b5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b5
    return-object p0

    :cond_1b6
    :try_start_1b6
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1bc
    move-exception p0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1c6
    .catchall {:try_start_1b6 .. :try_end_1c6} :catchall_186

    :goto_1c6
    if-eqz v3, :cond_1cb

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1cb
    throw p0
.end method
