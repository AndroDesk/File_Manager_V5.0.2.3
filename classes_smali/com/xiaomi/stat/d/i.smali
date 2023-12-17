.class public Lcom/xiaomi/stat/d/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x2710

.field public static final b:I = 0x3a98

.field private static final c:Ljava/lang/String; = "GET"

.field private static final d:Ljava/lang/String; = "POST"

.field private static final e:Ljava/lang/String; = "&"

.field private static final f:Ljava/lang/String; = "="

.field private static final g:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/i;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "POST"

    const-string v1, "GET"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_d

    move-object p2, v6

    goto :goto_11

    .line 4
    :cond_d
    :try_start_d
    invoke-static {p2, p3}, Lcom/xiaomi/stat/d/i;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    .line 5
    :goto_11
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2e

    if-eqz p2, :cond_2e

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "? "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2f

    :cond_2e
    move-object p3, p1

    .line 7
    :goto_2f
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_3a} :catch_b7
    .catchall {:try_start_d .. :try_end_3a} :catchall_b3

    const/16 v7, 0x2710

    .line 8
    :try_start_3c
    invoke-virtual {p3, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x3a98

    .line 9
    invoke-virtual {p3, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_48} :catch_b0
    .catchall {:try_start_3c .. :try_end_48} :catchall_ad

    const-string v8, "UTF-8"

    if-eqz v7, :cond_50

    .line 11
    :try_start_4c
    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_75

    .line 12
    :cond_50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    if-eqz p2, :cond_75

    .line 13
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    .line 14
    invoke-virtual {p3, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 16
    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 17
    invoke-virtual {p3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_6d} :catch_b0
    .catchall {:try_start_4c .. :try_end_6d} :catchall_ad

    .line 18
    :try_start_6d
    array-length v1, p2

    invoke-virtual {v0, p2, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 19
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_76

    :cond_75
    :goto_75
    move-object v0, v6

    .line 20
    :goto_76
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 21
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7e} :catch_aa
    .catchall {:try_start_6d .. :try_end_7e} :catchall_a8

    .line 22
    :try_start_7e
    invoke-static {v1}, Lcom/xiaomi/stat/d/j;->b(Ljava/io/InputStream;)[B

    move-result-object v7

    const-string v9, "HttpUtil %s succeed url: %s, code: %s"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object p0, v10, v5

    aput-object p1, v10, v4

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 24
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_9c} :catch_a6
    .catchall {:try_start_7e .. :try_end_9c} :catchall_da

    .line 25
    invoke-static {v1}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/InputStream;)V

    .line 26
    invoke-static {v0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 27
    invoke-static {p3}, Lcom/xiaomi/stat/d/j;->a(Ljava/net/HttpURLConnection;)V

    return-object p2

    :catch_a6
    move-exception p2

    goto :goto_bb

    :catchall_a8
    move-exception p0

    goto :goto_dc

    :catch_aa
    move-exception p2

    move-object v1, v6

    goto :goto_bb

    :catchall_ad
    move-exception p0

    move-object v0, v6

    goto :goto_dc

    :catch_b0
    move-exception p2

    move-object v0, v6

    goto :goto_ba

    :catchall_b3
    move-exception p0

    move-object p3, v6

    move-object v0, p3

    goto :goto_dc

    :catch_b7
    move-exception p2

    move-object p3, v6

    move-object v0, p3

    :goto_ba
    move-object v1, v0

    :goto_bb
    :try_start_bb
    const-string v7, "HttpUtil %s failed, url: %s, error: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    aput-object p1, v3, v4

    .line 28
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_bb .. :try_end_d0} :catchall_da

    .line 29
    invoke-static {v1}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/InputStream;)V

    .line 30
    invoke-static {v0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 31
    invoke-static {p3}, Lcom/xiaomi/stat/d/j;->a(Ljava/net/HttpURLConnection;)V

    return-object v6

    :catchall_da
    move-exception p0

    move-object v6, v1

    .line 32
    :goto_dc
    invoke-static {v6}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/InputStream;)V

    .line 33
    invoke-static {v0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 34
    invoke-static {p3}, Lcom/xiaomi/stat/d/j;->a(Ljava/net/HttpURLConnection;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
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

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/xiaomi/stat/d/i;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "GET"

    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
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

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_37

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_17

    .line 58
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 60
    :cond_37
    invoke-static {}, Lcom/xiaomi/stat/ak;->c()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Map;Z)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 37
    :goto_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_11} :catch_7f

    const-string v3, "="

    const-string v4, "&"

    const-string v5, "UTF-8"

    if-eqz v2, :cond_5c

    .line 38
    :try_start_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_d

    .line 40
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_35

    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4e

    const-string v2, "null"

    goto :goto_54

    :cond_4e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_54
    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_5c
    if-eqz p1, :cond_84

    .line 45
    invoke-static {p0}, Lcom/xiaomi/stat/d/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6b

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    const-string p1, "sn"

    .line 48
    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_7e} :catch_7f

    goto :goto_84

    :catch_7f
    const-string p0, "format params failed"

    .line 51
    invoke-static {p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    .line 52
    :cond_84
    :goto_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
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

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/stat/d/i;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "POST"

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
