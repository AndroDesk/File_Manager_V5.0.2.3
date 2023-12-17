.class Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;
.super Ljava/lang/Object;
.source "MetaDataStore.java"


# static fields
.field private static final KEYDATA_SUFFIX:Ljava/lang/String; = "keys"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final METADATA_EXT:Ljava/lang/String; = ".meta"

.field private static final USERDATA_SUFFIX:Ljava/lang/String; = "user"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final filesDir:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->filesDir:Ljava/io/File;

    .line 6
    return-void
.end method

.method private static jsonToKeysData(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/util/HashMap;

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_22

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-static {v0, v2}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->valueOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    goto :goto_e

    .line 35
    :cond_22
    return-object p0
.end method

.method private static jsonToUserData(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/UserMetadata;
    .registers 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;-><init>()V

    .line 11
    const-string v1, "userId"

    .line 13
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->valueOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->setUserId(Ljava/lang/String;)V

    .line 20
    return-object p0
.end method

.method private static keysDataToJson(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
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
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static userDataToJson(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static valueOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_b

    .line 8
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    :cond_b
    return-object v1
.end method


# virtual methods
.method public getKeysFileForSession(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->filesDir:Ljava/io/File;

    .line 5
    const-string v2, "keys"

    .line 7
    const-string v3, ".meta"

    .line 9
    invoke-static {p1, v2, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public getUserDataFileForSession(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->filesDir:Ljava/io/File;

    .line 5
    const-string v2, "user"

    .line 7
    const-string v3, ".meta"

    .line 9
    invoke-static {p1, v2, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public readKeyData(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Failed to close user metadata file."

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->getKeysFileForSession(Ljava/lang/String;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_11

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :try_start_12
    new-instance v2, Ljava/io/FileInputStream;

    .line 21
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_2b
    .catchall {:try_start_12 .. :try_end_17} :catchall_29

    .line 24
    :try_start_17
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->jsonToKeysData(Ljava/lang/String;)Ljava/util/Map;

    .line 31
    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_26
    .catchall {:try_start_17 .. :try_end_1f} :catchall_23

    .line 32
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 35
    return-object p1

    .line 36
    :catchall_23
    move-exception p1

    .line 37
    move-object v1, v2

    .line 38
    goto :goto_3d

    .line 39
    :catch_26
    move-exception p1

    .line 40
    move-object v1, v2

    .line 41
    goto :goto_2c

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    goto :goto_3d

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    :goto_2c
    :try_start_2c
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 48
    move-result-object v2

    .line 49
    const-string v3, "Error deserializing user metadata."

    .line 51
    invoke-virtual {v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_29

    .line 54
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :goto_3d
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 65
    throw p1
.end method

.method public readUserData(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/UserMetadata;
    .registers 6

    .line 1
    const-string v0, "Failed to close user metadata file."

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->getUserDataFileForSession(Ljava/lang/String;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_12

    .line 13
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 15
    invoke-direct {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;-><init>()V

    .line 18
    return-object p1

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    :try_start_13
    new-instance v2, Ljava/io/FileInputStream;

    .line 22
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_2c
    .catchall {:try_start_13 .. :try_end_18} :catchall_2a

    .line 25
    :try_start_18
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->jsonToUserData(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 32
    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_27
    .catchall {:try_start_18 .. :try_end_20} :catchall_24

    .line 33
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 36
    return-object p1

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    move-object v1, v2

    .line 39
    goto :goto_3f

    .line 40
    :catch_27
    move-exception p1

    .line 41
    move-object v1, v2

    .line 42
    goto :goto_2d

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_3f

    .line 45
    :catch_2c
    move-exception p1

    .line 46
    :goto_2d
    :try_start_2d
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 49
    move-result-object v2

    .line 50
    const-string v3, "Error deserializing user metadata."

    .line 52
    invoke-virtual {v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2a

    .line 55
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 60
    invoke-direct {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;-><init>()V

    .line 63
    return-object p1

    .line 64
    :goto_3f
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 67
    throw p1
.end method

.method public writeKeyData(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Failed to close key/value metadata file."

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->getKeysFileForSession(Ljava/lang/String;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_7
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->keysDataToJson(Ljava/util/Map;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    new-instance v2, Ljava/io/BufferedWriter;

    .line 14
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 16
    new-instance v4, Ljava/io/FileOutputStream;

    .line 18
    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 21
    sget-object p1, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->UTF_8:Ljava/nio/charset/Charset;

    .line 23
    invoke-direct {v3, v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 26
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_2e
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2c

    .line 29
    :try_start_1c
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_29
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    .line 35
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 38
    goto :goto_3b

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    move-object v1, v2

    .line 41
    goto :goto_3c

    .line 42
    :catch_29
    move-exception p1

    .line 43
    move-object v1, v2

    .line 44
    goto :goto_2f

    .line 45
    :catchall_2c
    move-exception p1

    .line 46
    goto :goto_3c

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    :goto_2f
    :try_start_2f
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 51
    move-result-object p2

    .line 52
    const-string v2, "Error serializing key/value metadata."

    .line 54
    invoke-virtual {p2, v2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2c

    .line 57
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 60
    :goto_3b
    return-void

    .line 61
    :goto_3c
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 64
    throw p1
.end method

.method public writeUserData(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .registers 8

    .line 1
    const-string v0, "Failed to close user metadata file."

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->getUserDataFileForSession(Ljava/lang/String;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_7
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->userDataToJson(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    new-instance v2, Ljava/io/BufferedWriter;

    .line 14
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 16
    new-instance v4, Ljava/io/FileOutputStream;

    .line 18
    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 21
    sget-object p1, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->UTF_8:Ljava/nio/charset/Charset;

    .line 23
    invoke-direct {v3, v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 26
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_2e
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2c

    .line 29
    :try_start_1c
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_29
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    .line 35
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 38
    goto :goto_3b

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    move-object v1, v2

    .line 41
    goto :goto_3c

    .line 42
    :catch_29
    move-exception p1

    .line 43
    move-object v1, v2

    .line 44
    goto :goto_2f

    .line 45
    :catchall_2c
    move-exception p1

    .line 46
    goto :goto_3c

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    :goto_2f
    :try_start_2f
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 51
    move-result-object p2

    .line 52
    const-string v2, "Error serializing user metadata."

    .line 54
    invoke-virtual {p2, v2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2c

    .line 57
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 60
    :goto_3b
    return-void

    .line 61
    :goto_3c
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 64
    throw p1
.end method
