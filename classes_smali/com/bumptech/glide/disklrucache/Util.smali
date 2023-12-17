.class final Lcom/bumptech/glide/disklrucache/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "US-ASCII"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 9
    const-string v0, "UTF-8"

    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/bumptech/glide/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_8

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 6
    goto :goto_8

    .line 7
    :catch_6
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static deleteContents(Ljava/io/File;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_36

    .line 7
    array-length p0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    if-ge v1, p0, :cond_35

    .line 11
    aget-object v2, v0, v1

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_15

    .line 19
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 22
    :cond_15
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1e

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_8

    .line 31
    :cond_1e
    new-instance p0, Ljava/io/IOException;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v1, "failed to delete file: "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    :cond_35
    return-void

    .line 55
    :cond_36
    new-instance v0, Ljava/io/IOException;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v2, "not a readable directory: "

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6
    const/16 v1, 0x400

    .line 8
    new-array v1, v1, [C

    .line 10
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_15

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V

    .line 21
    goto :goto_9

    .line 22
    :cond_15
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1d

    .line 26
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 29
    return-object v0

    .line 30
    :catchall_1d
    move-exception v0

    .line 31
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 34
    throw v0
.end method
