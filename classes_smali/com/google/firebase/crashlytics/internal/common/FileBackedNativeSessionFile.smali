.class Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;
.super Ljava/lang/Object;
.source "FileBackedNativeSessionFile.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;


# instance fields
.field private final dataTransportFilename:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final reportsEndpointFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    .line 10
    return-void
.end method

.method private asGzippedBytes()[B
    .registers 8

    .line 1
    const/16 v0, 0x2000

    .line 3
    new-array v0, v0, [B

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->getStream()Ljava/io/InputStream;

    .line 9
    move-result-object v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_4e

    .line 10
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 12
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_47

    .line 15
    :try_start_e
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    .line 17
    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    if-nez v2, :cond_21

    .line 22
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_42

    .line 25
    :try_start_18
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_47

    .line 28
    if-eqz v2, :cond_20

    .line 30
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_4e

    .line 33
    :cond_20
    return-object v1

    .line 34
    :cond_21
    :goto_21
    :try_start_21
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 37
    move-result v5

    .line 38
    if-lez v5, :cond_2c

    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-virtual {v4, v0, v6, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 44
    goto :goto_21

    .line 45
    :cond_2c
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 48
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 51
    move-result-object v0
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_3d

    .line 52
    :try_start_33
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_42

    .line 55
    :try_start_36
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_47

    .line 58
    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_4e

    .line 61
    return-object v0

    .line 62
    :catchall_3d
    move-exception v0

    .line 63
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_41

    .line 66
    :catchall_41
    :try_start_41
    throw v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    :try_start_43
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_46

    .line 71
    :catchall_46
    :try_start_46
    throw v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 72
    :catchall_47
    move-exception v0

    .line 73
    if-eqz v2, :cond_4d

    .line 75
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4d

    .line 78
    :catchall_4d
    :cond_4d
    :try_start_4d
    throw v0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 79
    :catch_4e
    return-object v1
.end method


# virtual methods
.method public asFilePayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->asGzippedBytes()[B

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setContents([B)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setFilename(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    return-object v0
.end method

.method public getReportsEndpointFilename()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1a

    .line 10
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    .line 21
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    .line 23
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 26
    return-object v0

    .line 27
    :catch_1a
    :cond_1a
    :goto_1a
    return-object v1
.end method
