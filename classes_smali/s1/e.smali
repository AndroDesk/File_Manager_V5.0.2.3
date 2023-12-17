.class public final Ls1/e;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public static a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 11

    .line 1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v2, v0, v2

    .line 9
    if-gez v2, :cond_e

    .line 11
    const-wide/32 v3, 0x7fffffff

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move-wide v3, v0

    .line 16
    :goto_f
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 18
    const/16 v6, 0x400

    .line 20
    int-to-long v7, v6

    .line 21
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 24
    move-result-wide v3

    .line 25
    long-to-int v3, v3

    .line 26
    invoke-direct {v5, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ltz v2, :cond_25

    .line 32
    cmp-long v2, v0, v7

    .line 34
    if-gtz v2, :cond_25

    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v2, v3

    .line 39
    :goto_26
    if-eqz v2, :cond_2c

    .line 41
    invoke-interface {p0, v5}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 44
    goto :goto_4b

    .line 45
    :cond_2c
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 48
    move-result-object p0

    .line 49
    :try_start_30
    new-array v4, v6, [B

    .line 51
    move v7, v3

    .line 52
    :goto_33
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    .line 55
    move-result v8

    .line 56
    const/4 v9, -0x1

    .line 57
    if-eq v8, v9, :cond_47

    .line 59
    if-ge v7, v6, :cond_47

    .line 61
    rsub-int v9, v7, 0x400

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 66
    move-result v9

    .line 67
    invoke-virtual {v5, v4, v3, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_79

    .line 70
    add-int/2addr v7, v8

    .line 71
    goto :goto_33

    .line 72
    :cond_47
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 75
    move v3, v7

    .line 76
    :goto_4b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object p0

    .line 84
    if-nez v2, :cond_6f

    .line 86
    if-ge v3, v6, :cond_58

    .line 88
    goto :goto_6f

    .line 89
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v3, "\n [TOO MUCH DATA TO INCLUDE, SIZE="

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, "]"

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    goto :goto_71

    .line 112
    :cond_6f
    :goto_6f
    const-string v0, ""

    .line 114
    :goto_71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :catchall_79
    move-exception v0

    .line 123
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 126
    throw v0
.end method

.method public static b()Lorg/apache/http/HttpHost;
    .registers 4

    .line 1
    invoke-static {}, Ls1/c;->b()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "connectivity"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 13
    if-eqz v0, :cond_19

    .line 15
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 24
    move-result v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, -0x1

    .line 27
    :goto_1a
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    return-object v1

    .line 31
    :cond_1e
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    .line 38
    move-result v2

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_31

    .line 45
    new-instance v1, Lorg/apache/http/HttpHost;

    .line 47
    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 50
    :cond_31
    return-object v1
.end method

.method public static c([Lorg/apache/http/Header;)J
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-eqz p0, :cond_1e

    .line 5
    array-length v2, p0

    .line 6
    if-gtz v2, :cond_8

    .line 8
    goto :goto_1e

    .line 9
    :cond_8
    array-length v2, p0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_a
    if-ge v3, v2, :cond_1e

    .line 13
    aget-object v4, p0, v3

    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 22
    move-result-object v4

    .line 23
    array-length v4, v4

    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 26
    int-to-long v4, v4

    .line 27
    add-long/2addr v0, v4

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    :goto_1e
    return-wide v0
.end method

.method public static varargs d([Lorg/apache/http/HttpRequest;)J
    .registers 12

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-nez p0, :cond_5

    .line 5
    return-wide v0

    .line 6
    :cond_5
    array-length v2, p0

    .line 7
    const/4 v3, 0x0

    .line 8
    move-wide v4, v0

    .line 9
    :goto_8
    if-ge v3, v2, :cond_2e

    .line 11
    aget-object v6, p0, v3

    .line 13
    if-nez v6, :cond_10

    .line 15
    move-wide v9, v0

    .line 16
    goto :goto_2a

    .line 17
    :cond_10
    invoke-interface {v6}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 28
    move-result-object v7

    .line 29
    array-length v7, v7

    .line 30
    add-int/lit8 v7, v7, 0x1

    .line 32
    int-to-long v7, v7

    .line 33
    invoke-interface {v6}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    .line 36
    move-result-object v6

    .line 37
    invoke-static {v6}, Ls1/e;->c([Lorg/apache/http/Header;)J

    .line 40
    move-result-wide v9

    .line 41
    add-long/2addr v9, v7

    .line 42
    add-long/2addr v9, v0

    .line 43
    :goto_2a
    add-long/2addr v4, v9

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_8

    .line 47
    :cond_2e
    return-wide v4
.end method

.method public static e(Lorg/apache/http/HttpResponse;)J
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-nez p0, :cond_5

    .line 5
    return-wide v0

    .line 6
    :cond_5
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 17
    move-result-object v2

    .line 18
    array-length v2, v2

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    int-to-long v2, v2

    .line 22
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ls1/e;->c([Lorg/apache/http/Header;)J

    .line 29
    move-result-wide v4

    .line 30
    add-long/2addr v4, v2

    .line 31
    add-long/2addr v4, v0

    .line 32
    return-wide v4
.end method

.method public static varargs f([Lorg/apache/http/HttpResponse;)J
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-nez p0, :cond_5

    .line 5
    return-wide v0

    .line 6
    :cond_5
    array-length v2, p0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_7
    if-ge v3, v2, :cond_13

    .line 10
    aget-object v4, p0, v3

    .line 12
    invoke-static {v4}, Ls1/e;->e(Lorg/apache/http/HttpResponse;)J

    .line 15
    move-result-wide v4

    .line 16
    add-long/2addr v0, v4

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 19
    goto :goto_7

    .line 20
    :cond_13
    return-wide v0
.end method

.method public static g(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;
    .registers 7

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 17
    const-string v1, "\n"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    .line 25
    move-result-object v2

    .line 26
    array-length v3, v2

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_1b
    if-ge v4, v3, :cond_30

    .line 30
    aget-object v5, v2, v4

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_1b

    .line 49
    :cond_30
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 51
    if-eqz v2, :cond_5d

    .line 53
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 55
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_5d

    .line 61
    const-string v2, "Content:\n"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :try_start_41
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_4f

    .line 72
    invoke-static {p0}, Ls1/e;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    goto :goto_5a

    .line 80
    :cond_4f
    const-string p0, " [DATA CAN NOT REPEAT]"

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_54} :catch_55

    .line 85
    goto :goto_5a

    .line 86
    :catch_55
    const-string p0, " [FAILED OUTPUT DATA]"

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :goto_5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_5d
    return-object v0
.end method

.method public static h(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;
    .registers 7

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 17
    const-string v1, "\n"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    .line 25
    move-result-object v2

    .line 26
    array-length v3, v2

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_1b
    if-ge v4, v3, :cond_30

    .line 30
    aget-object v5, v2, v4

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_1b

    .line 49
    :cond_30
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_57

    .line 55
    const-string v2, "Content:\n"

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :try_start_3b
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_49

    .line 66
    invoke-static {p0}, Ls1/e;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    goto :goto_54

    .line 74
    :cond_49
    const-string p0, " [DATA CAN NOT REPEAT]"

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4e} :catch_4f

    .line 79
    goto :goto_54

    .line 80
    :catch_4f
    const-string p0, " [FAILED OUTPUT DATA]"

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :goto_54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_57
    return-object v0
.end method
