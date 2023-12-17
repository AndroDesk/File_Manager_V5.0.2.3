.class public Lcom/xiaomi/onetrack/g/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x2710

.field public static final b:I = 0x3a98

.field public static final c:Ljava/lang/String; = "OT_SID"

.field public static final d:Ljava/lang/String; = "OT_ts"

.field public static final e:Ljava/lang/String; = "OT_net"

.field public static final f:Ljava/lang/String; = "OT_sender"

.field public static final g:Ljava/lang/String; = "OT_protocol"

.field private static h:Ljava/lang/String; = "HttpUtil"

.field private static final i:Ljava/lang/String; = "GET"

.field private static final j:Ljava/lang/String; = "POST"

.field private static final k:Ljava/lang/String; = "&"

.field private static final l:Ljava/lang/String; = "="

.field private static final m:Ljava/lang/String; = "UTF-8"

.field private static final n:Ljava/lang/String; = "miui_sdkconfig_jafej!@#)(*e@!#"

.field private static final o:I = 0x3


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

    .line 41
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 13
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

    const/4 v2, 0x0

    if-nez p2, :cond_9

    move-object p2, v2

    goto :goto_d

    .line 44
    :cond_9
    :try_start_9
    invoke-static {p2, p3}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    .line 45
    :goto_d
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2a

    if-eqz p2, :cond_2a

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "? "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2b

    :cond_2a
    move-object p3, p1

    .line 47
    :goto_2b
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_36} :catch_b7
    .catchall {:try_start_9 .. :try_end_36} :catchall_b3

    const/16 v3, 0x2710

    .line 48
    :try_start_38
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x3a98

    .line 49
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_44} :catch_af
    .catchall {:try_start_38 .. :try_end_44} :catchall_ac

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4e

    .line 51
    :try_start_4a
    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_73

    .line 52
    :cond_4e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_73

    if-eqz p2, :cond_73

    .line 53
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    .line 54
    invoke-virtual {p3, p0, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 56
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 57
    invoke-virtual {p3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6b} :catch_af
    .catchall {:try_start_4a .. :try_end_6b} :catchall_ac

    .line 58
    :try_start_6b
    array-length v0, p0

    invoke-virtual {p2, p0, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 59
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    goto :goto_74

    :cond_73
    :goto_73
    move-object p2, v2

    .line 60
    :goto_74
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 61
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7c} :catch_a9
    .catchall {:try_start_6b .. :try_end_7c} :catchall_a7

    .line 62
    :try_start_7c
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->b(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 63
    sget-object v3, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v7, "HttpUtils POST 上传成功 url: %s, code: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9b} :catch_a5
    .catchall {:try_start_7c .. :try_end_9b} :catchall_cc

    .line 65
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 66
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 67
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    return-object p0

    :catch_a5
    move-exception p0

    goto :goto_bb

    :catchall_a7
    move-exception p0

    goto :goto_ce

    :catch_a9
    move-exception p0

    move-object v0, v2

    goto :goto_bb

    :catchall_ac
    move-exception p0

    move-object p2, v2

    goto :goto_ce

    :catch_af
    move-exception p0

    move-object p2, v2

    move-object v0, p2

    goto :goto_bb

    :catchall_b3
    move-exception p0

    move-object p2, v2

    move-object p3, p2

    goto :goto_ce

    :catch_b7
    move-exception p0

    move-object p2, v2

    move-object p3, p2

    move-object v0, p3

    .line 68
    :goto_bb
    :try_start_bb
    sget-object p1, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v1, "HttpUtils POST 上传异常"

    invoke-static {p1, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_cc

    .line 69
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 70
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 71
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    return-object v2

    :catchall_cc
    move-exception p0

    move-object v2, v0

    .line 72
    :goto_ce
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 73
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 74
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    .line 75
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

    .line 42
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

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

    .line 43
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 13

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v1, "doPost url="

    const-string v2, ", len="

    .line 2
    invoke-static {v1, p0, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    :try_start_19
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_dd
    .catchall {:try_start_19 .. :try_end_24} :catchall_d9

    const/16 v5, 0x2710

    .line 5
    :try_start_26
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v5, 0x3a98

    .line 6
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 7
    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v5, "POST"

    .line 8
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/octet-stream"

    .line 9
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/d/f;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/onetrack/d/f;->b()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    const-string v6, "OT_SID"

    .line 11
    invoke-virtual {v4, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "OT_ts"

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "OT_net"

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "OT_sender"

    .line 14
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "OT_protocol"

    const-string v7, "3.0"

    .line 15
    invoke-virtual {v4, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v6, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_94} :catch_d7
    .catchall {:try_start_26 .. :try_end_94} :catchall_d4

    .line 18
    :try_start_94
    array-length v6, p1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 19
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 20
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 21
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a3} :catch_d1
    .catchall {:try_start_94 .. :try_end_a3} :catchall_cf

    .line 22
    :try_start_a3
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/m;->b(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 23
    sget-object v8, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v9, "HttpUtils POST 上传成功 url: %s, code: %s"

    new-array v10, v0, [Ljava/lang/Object;

    aput-object p0, v10, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {p1, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_c3} :catch_cd
    .catchall {:try_start_a3 .. :try_end_c3} :catchall_100

    .line 25
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 26
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 27
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    return-object p1

    :catch_cd
    move-exception p1

    goto :goto_e1

    :catchall_cf
    move-exception p0

    goto :goto_102

    :catch_d1
    move-exception p1

    move-object v6, v3

    goto :goto_e1

    :catchall_d4
    move-exception p0

    move-object v5, v3

    goto :goto_102

    :catch_d7
    move-exception p1

    goto :goto_df

    :catchall_d9
    move-exception p0

    move-object v4, v3

    move-object v5, v4

    goto :goto_102

    :catch_dd
    move-exception p1

    move-object v4, v3

    :goto_df
    move-object v5, v3

    move-object v6, v5

    .line 28
    :goto_e1
    :try_start_e1
    sget-object v7, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v8, "HttpUtils POST 上传失败, url: %s, error: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_e1 .. :try_end_f6} :catchall_100

    .line 29
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 30
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 31
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    return-object v3

    :catchall_100
    move-exception p0

    move-object v3, v6

    .line 32
    :goto_102
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 33
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 34
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    .line 35
    throw p0
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

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_37

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_17

    .line 99
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_37
    const-string p0, "miui_sdkconfig_jafej!@#)(*e@!#"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

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

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
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

    .line 79
    :try_start_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_d

    .line 81
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_35

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
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
    if-eqz p1, :cond_86

    .line 86
    invoke-static {p0}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6b

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    const-string p1, "sign"

    .line 89
    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_7e} :catch_7f

    goto :goto_86

    .line 92
    :catch_7f
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string p1, "format params failed"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_86
    :goto_86
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
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

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
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 11

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 4
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v0, "doGetAdMonitor dbUrl is null"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    :goto_13
    const/4 v5, 0x3

    if-lt v3, v5, :cond_21

    .line 5
    :try_start_16
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v3, "redirectCount >= 3, return true"

    invoke-static {p0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/net/ProtocolException; {:try_start_16 .. :try_end_1d} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_9e
    .catchall {:try_start_16 .. :try_end_1d} :catchall_9c

    .line 6
    :try_start_1d
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    return v1

    .line 7
    :cond_21
    :try_start_21
    div-int/lit8 v4, v4, 0x64

    if-ne v4, v5, :cond_43

    add-int/lit8 v3, v3, 0x1

    const-string p0, "Location"

    .line 8
    invoke-virtual {v2, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    sget-object v4, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirect url is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_43
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_4e
    .catch Ljava/net/ProtocolException; {:try_start_21 .. :try_end_4e} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4e} :catch_9e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_9c

    .line 11
    :try_start_4e
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "GET"

    .line 12
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 13
    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3a98

    .line 14
    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 15
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 16
    sget-object v6, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdMonitor get 请求 ResponseCode："

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    div-int/lit8 v6, v2, 0x64

    const/4 v7, 0x5

    if-eq v6, v7, :cond_87

    div-int/lit8 v6, v2, 0x64
    :try_end_81
    .catch Ljava/net/ProtocolException; {:try_start_4e .. :try_end_81} :catch_99
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_81} :catch_96
    .catchall {:try_start_4e .. :try_end_81} :catchall_93

    if-eq v6, v5, :cond_87

    .line 18
    :try_start_83
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_86

    :catch_86
    return v1

    .line 19
    :cond_87
    :try_start_87
    div-int/lit8 v6, v2, 0x64
    :try_end_89
    .catch Ljava/net/ProtocolException; {:try_start_87 .. :try_end_89} :catch_99
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_89} :catch_96
    .catchall {:try_start_87 .. :try_end_89} :catchall_93

    if-eq v6, v5, :cond_8f

    .line 20
    :try_start_8b
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_df

    goto :goto_df

    :cond_8f
    move-object v9, v4

    move v4, v2

    move-object v2, v9

    goto :goto_13

    :catchall_93
    move-exception p0

    move-object v2, v4

    goto :goto_e0

    :catch_96
    move-exception p0

    move-object v2, v4

    goto :goto_9f

    :catch_99
    move-exception p0

    move-object v2, v4

    goto :goto_be

    :catchall_9c
    move-exception p0

    goto :goto_e0

    :catch_9e
    move-exception p0

    .line 21
    :goto_9f
    :try_start_9f
    sget-object v1, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpUtils doGetAdMonitor 上传异常:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_9f .. :try_end_b9} :catchall_9c

    .line 22
    :cond_b9
    :try_start_b9
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_df

    goto :goto_df

    :catch_bd
    move-exception p0

    .line 23
    :goto_be
    :try_start_be
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "200 OK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b9

    .line 25
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v0, "response code is 200, bug status line is invalid."

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_be .. :try_end_db} :catchall_9c

    .line 26
    :try_start_db
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_de

    :catch_de
    return v1

    :catch_df
    :goto_df
    return v0

    :goto_e0
    :try_start_e0
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e3

    .line 27
    :catch_e3
    throw p0
.end method
