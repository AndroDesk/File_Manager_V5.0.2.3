.class public Lcom/xiaomi/micloudsdk/exception/CloudServerException;
.super Lcom/xiaomi/opensdk/exception/ServerException;
.source "CloudServerException.java"


# static fields
.field public static final CODE_ACTIVATED_FAIL:I = 0x3e9

.field public static final CODE_PERMISSION_LIMIT:I = 0x3ea

.field public static final CODE_SECURE_SPACE_LIMIT:I = 0x3eb

.field public static final CODE_SYNC_UNKNOWN:I = -0x1

.field public static final COLUMN_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final COLUMN_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final DEFAULT_STATUS_CODE:I = -0x2711

.field public static final PRIVACY_ERROR_CODE:I = 0xcb23

.field private static final RETRY_AFTER:Ljava/lang/String; = "Retry-After"

.field private static final TAG:Ljava/lang/String; = "CloudServerException"


# instance fields
.field public code:I

.field public retryTime:I

.field public serverDate:J

.field public statusCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const-string v0, "status: "

    .line 1
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const-string v0, "status: "

    .line 9
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 12
    iput p2, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    const p1, 0x7fffffff

    .line 13
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const-string v0, "status: "

    .line 19
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 21
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 22
    iput p2, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    mul-int/lit16 p3, p3, 0x3e8

    .line 23
    iput p3, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 69
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    const-string v0, "status: "

    .line 29
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-direct {p0, v0, p2}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/net/HttpURLConnection;)V
    .registers 7

    const-string v0, "Retry-After"

    const-string v1, "Can\'t find retry time in 503 HttpURLConnection response"

    const-string v2, "CloudServerException"

    const-string v3, "status: "

    .line 37
    invoke-static {v3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-direct {p0, v3}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 39
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 40
    :try_start_11
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v3, 0x1f7

    if-ne p1, v3, :cond_3b

    .line 41
    invoke-virtual {p2, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 42
    invoke-virtual {p2, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_33} :catch_38
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_33} :catch_34

    goto :goto_3b

    .line 43
    :catch_34
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 44
    :catch_38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    return-void
.end method

.method public constructor <init>(ILorg/apache/http/HttpResponse;)V
    .registers 5

    const-string v0, "CloudServerException"

    const-string v1, "status: "

    .line 50
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-direct {p0, v1}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 52
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    if-eqz p2, :cond_68

    .line 53
    :try_start_f
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    if-eqz p1, :cond_43

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v1, 0x1f7

    if-ne p1, v1, :cond_43

    const-string p1, "Retry-After"

    .line 54
    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 55
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 56
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    :cond_43
    const-string p1, "Date"

    .line 57
    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 58
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_4f} :catch_63

    if-eqz p1, :cond_68

    .line 59
    :try_start_51
    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->serverDate:J
    :try_end_5b
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_51 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_5b} :catch_63

    goto :goto_68

    :catch_5c
    move-exception p1

    :try_start_5d
    const-string p2, "Error parsing server date"

    .line 61
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_68

    :catch_63
    const-string p1, "Can\'t find retry time in 503 HttpURLConnection response"

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_68
    return-void
.end method

.method public static isMiCloudServerException(I)Z
    .registers 2

    .line 1
    const/16 v0, 0x190

    .line 3
    if-eq p0, v0, :cond_18

    .line 5
    const/16 v0, 0x191

    .line 7
    if-eq p0, v0, :cond_18

    .line 9
    const/16 v0, 0x193

    .line 11
    if-eq p0, v0, :cond_18

    .line 13
    const/16 v0, 0x196

    .line 15
    if-eq p0, v0, :cond_18

    .line 17
    div-int/lit8 p0, p0, 0x64

    .line 19
    const/4 v0, 0x5

    .line 20
    if-ne p0, v0, :cond_16

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    :goto_18
    const/4 p0, 0x1

    .line 26
    :goto_19
    return p0
.end method


# virtual methods
.method public get5xxServerExceptionRetryTime()J
    .registers 3

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 3
    const/16 v1, 0x1f7

    .line 5
    if-ne v0, v1, :cond_c

    .line 7
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 9
    if-lez v0, :cond_c

    .line 11
    int-to-long v0, v0

    .line 12
    return-wide v0

    .line 13
    :cond_c
    const-wide/32 v0, 0x7fffffff

    .line 16
    return-wide v0
.end method

.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    .line 3
    return v0
.end method

.method public getRetryTime()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 3
    return v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 3
    return v0
.end method

.method public is5xxServerException()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 3
    div-int/lit8 v0, v0, 0x64

    .line 5
    const/4 v1, 0x5

    .line 6
    if-ne v0, v1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method
