.class Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;
.super Ljava/lang/Object;
.source "BytesBackedNativeSessionFile.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;


# instance fields
.field private final bytes:[B

.field private final dataTransportFilename:Ljava/lang/String;

.field private final reportsEndpointFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->bytes:[B

    .line 10
    return-void
.end method

.method private asGzippedBytes()[B
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 11
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_2f

    .line 14
    :try_start_d
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 16
    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_2a

    .line 19
    :try_start_12
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->bytes:[B

    .line 21
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 24
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 30
    move-result-object v3
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_25

    .line 31
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2a

    .line 34
    :try_start_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_2f

    .line 37
    return-object v3

    .line 38
    :catchall_25
    move-exception v3

    .line 39
    :try_start_26
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_29

    .line 42
    :catchall_29
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 43
    :catchall_2a
    move-exception v2

    .line 44
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2e

    .line 47
    :catchall_2e
    :try_start_2e
    throw v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 48
    :catch_2f
    return-object v1
.end method

.method private isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->bytes:[B

    .line 3
    if-eqz v0, :cond_a

    .line 5
    array-length v0, v0

    .line 6
    if-nez v0, :cond_8

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    :goto_a
    const/4 v0, 0x1

    .line 12
    :goto_b
    return v0
.end method


# virtual methods
.method public asFilePayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->asGzippedBytes()[B

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_1a

    .line 9
    :cond_8
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setContents([B)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setFilename(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;

    .line 26
    move-result-object v0

    .line 27
    :goto_1a
    return-object v0
.end method

.method public getReportsEndpointFilename()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->bytes:[B

    .line 13
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    :goto_f
    return-object v0
.end method
