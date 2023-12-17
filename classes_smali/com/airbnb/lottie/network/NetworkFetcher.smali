.class public Lcom/airbnb/lottie/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->appContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 12
    if-nez p3, :cond_11

    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    new-instance p2, Lcom/airbnb/lottie/network/NetworkCache;

    .line 20
    invoke-direct {p2, p1}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 25
    :goto_18
    return-void
.end method

.method private fetchFromCache()Lcom/airbnb/lottie/LottieComposition;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/network/NetworkCache;->fetch(Ljava/lang/String;)Ll0/c;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-object v1

    .line 16
    :cond_f
    iget-object v2, v0, Ll0/c;->a:Ljava/lang/Object;

    .line 18
    check-cast v2, Lcom/airbnb/lottie/network/FileExtension;

    .line 20
    iget-object v0, v0, Ll0/c;->b:Ljava/lang/Object;

    .line 22
    check-cast v0, Ljava/io/InputStream;

    .line 24
    sget-object v3, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 26
    if-ne v2, v3, :cond_27

    .line 28
    new-instance v2, Ljava/util/zip/ZipInputStream;

    .line 30
    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 35
    invoke-static {v2, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 42
    invoke-static {v0, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 45
    move-result-object v0

    .line 46
    :goto_2d
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_3a

    .line 52
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 58
    return-object v0

    .line 59
    :cond_3a
    return-object v1
.end method

.method private fetchFromNetwork()Lcom/airbnb/lottie/LottieResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetworkInternal()Lcom/airbnb/lottie/LottieResult;

    .line 4
    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object v0

    .line 6
    :catch_5
    move-exception v0

    .line 7
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    .line 9
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 12
    return-object v1
.end method

.method private fetchFromNetworkInternal()Lcom/airbnb/lottie/LottieResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Fetching "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/net/URL;

    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 23
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 32
    const-string v1, "GET"

    .line 34
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    :try_start_24
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 40
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_5b

    .line 46
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 49
    move-result v1

    .line 50
    const/16 v2, 0xc8

    .line 52
    if-eq v1, v2, :cond_36

    .line 54
    goto :goto_5b

    .line 55
    :cond_36
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/network/NetworkFetcher;->getResultFromConnection(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/LottieResult;

    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "Completed fetch from network. Success: "

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_4c

    .line 75
    const/4 v3, 0x1

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    const/4 v3, 0x0

    .line 78
    :goto_4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_57} :catch_96
    .catchall {:try_start_24 .. :try_end_57} :catchall_94

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    return-object v1

    .line 92
    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/network/NetworkFetcher;->getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    .line 98
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v5, "Unable to fetch "

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v5, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v5, ". Failed with "

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 123
    move-result v5

    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v5, "\n"

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_90} :catch_96
    .catchall {:try_start_5b .. :try_end_90} :catchall_94

    .line 145
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    return-object v2

    .line 149
    :catchall_94
    move-exception v1

    .line 150
    goto :goto_a0

    .line 151
    :catch_96
    move-exception v1

    .line 152
    :try_start_97
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    .line 154
    invoke-direct {v2, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_94

    .line 157
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    return-object v2

    .line 161
    :goto_a0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    throw v1
.end method

.method public static fetchSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync()Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method private getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 4
    new-instance v0, Ljava/io/BufferedReader;

    .line 6
    new-instance v1, Ljava/io/InputStreamReader;

    .line 8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 15
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    :goto_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_25

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/16 v1, 0xa

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_24} :catch_2f
    .catchall {:try_start_16 .. :try_end_24} :catchall_2d

    .line 37
    goto :goto_16

    .line 38
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_28

    .line 41
    :catch_28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    goto :goto_31

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    :try_start_30
    throw p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2d

    .line 50
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_34

    .line 53
    :catch_34
    throw p1
.end method

.method private getResultFromConnection(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/LottieResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const-string v0, "application/json"

    .line 9
    :cond_8
    const-string v1, "application/zip"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_45

    .line 18
    const-string v0, "Handling zip response."

    .line 20
    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 27
    if-nez v2, :cond_2a

    .line 29
    new-instance v2, Ljava/util/zip/ZipInputStream;

    .line 31
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v2, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_77

    .line 43
    :cond_2a
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v2, v1, p1, v0}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Ljava/util/zip/ZipInputStream;

    .line 55
    new-instance v2, Ljava/io/FileInputStream;

    .line 57
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    iget-object p1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 65
    invoke-static {v1, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 68
    move-result-object p1

    .line 69
    goto :goto_77

    .line 70
    :cond_45
    const-string v0, "Received json response."

    .line 72
    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 77
    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 79
    if-nez v2, :cond_59

    .line 81
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 88
    move-result-object p1

    .line 89
    goto :goto_77

    .line 90
    :cond_59
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v2, v1, p1, v0}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    .line 99
    move-result-object p1

    .line 100
    new-instance v1, Ljava/io/FileInputStream;

    .line 102
    new-instance v2, Ljava/io/File;

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    iget-object p1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 116
    invoke-static {v1, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 119
    move-result-object p1

    .line 120
    :goto_77
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 122
    if-eqz v1, :cond_88

    .line 124
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_88

    .line 130
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 132
    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 134
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/lottie/network/NetworkCache;->renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V

    .line 137
    :cond_88
    return-object p1
.end method


# virtual methods
.method public fetchSync()Lcom/airbnb/lottie/LottieResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromCache()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_c
    const-string v0, "Animation for "

    .line 4
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetwork()Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method
