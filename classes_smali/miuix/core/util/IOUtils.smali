.class public Lmiuix/core/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiuix/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Pool<",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHAR_ARRAY_WRITER_POOL:Lmiuix/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Pool<",
            "Ljava/io/CharArrayWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final STRING_WRITER_POOL:Lmiuix/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Pool<",
            "Ljava/io/StringWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_LOCAL_BYTE_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final THREAD_LOCAL_CHAR_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[C>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Lmiuix/core/util/IOUtils;->THREAD_LOCAL_BYTE_BUFFER:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    sput-object v0, Lmiuix/core/util/IOUtils;->THREAD_LOCAL_CHAR_BUFFER:Ljava/lang/ThreadLocal;

    .line 15
    new-instance v0, Lmiuix/core/util/IOUtils$1;

    .line 17
    invoke-direct {v0}, Lmiuix/core/util/IOUtils$1;-><init>()V

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lmiuix/core/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiuix/core/util/Pools$Pool;

    .line 27
    new-instance v0, Lmiuix/core/util/IOUtils$2;

    .line 29
    invoke-direct {v0}, Lmiuix/core/util/IOUtils$2;-><init>()V

    .line 32
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lmiuix/core/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiuix/core/util/Pools$Pool;

    .line 38
    new-instance v0, Lmiuix/core/util/IOUtils$3;

    .line 40
    invoke-direct {v0}, Lmiuix/core/util/IOUtils$3;-><init>()V

    .line 43
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lmiuix/core/util/IOUtils;->STRING_WRITER_POOL:Lmiuix/core/util/Pools$Pool;

    .line 49
    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/io/StringWriter;

    .line 55
    new-instance v2, Ljava/io/PrintWriter;

    .line 57
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 63
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 66
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    sput-object v3, Lmiuix/core/util/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 72
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 75
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 6
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .registers 1

    if-eqz p0, :cond_8

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    .line 5
    :catch_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    :cond_8
    return-void
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7

    .line 1
    invoke-static {}, Lmiuix/core/util/IOUtils;->getByteArrayBuffer()[B

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_6

    .line 4
    :cond_14
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-wide v1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)J
    .registers 7

    .line 17
    invoke-static {}, Lmiuix/core/util/IOUtils;->getCharArrayBuffer()[C

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 18
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    const/4 v4, 0x0

    .line 19
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_6

    .line 20
    :cond_14
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-wide v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .registers 3

    .line 5
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    invoke-static {v0, p1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_f

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_f

    .line 8
    :cond_9
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 9
    :cond_f
    :goto_f
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 10
    :goto_14
    invoke-static {v0, p1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .registers 3

    .line 11
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 12
    invoke-static {p0, v0}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_f

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_f

    .line 14
    :cond_9
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 15
    :cond_f
    :goto_f
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 16
    :goto_14
    invoke-static {p0, v0}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    return-void
.end method

.method private static getByteArrayBuffer()[B
    .registers 3

    .line 1
    sget-object v0, Lmiuix/core/util/IOUtils;->THREAD_LOCAL_BYTE_BUFFER:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 9
    if-eqz v1, :cond_11

    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [B

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    if-nez v1, :cond_20

    .line 21
    const/16 v1, 0x1000

    .line 23
    new-array v1, v1, [B

    .line 25
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 27
    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 33
    :cond_20
    return-object v1
.end method

.method private static getCharArrayBuffer()[C
    .registers 3

    .line 1
    sget-object v0, Lmiuix/core/util/IOUtils;->THREAD_LOCAL_CHAR_BUFFER:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 9
    if-eqz v1, :cond_11

    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [C

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    if-nez v1, :cond_20

    .line 21
    const/16 v1, 0x1000

    .line 23
    new-array v1, v1, [C

    .line 25
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 27
    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 33
    :cond_20
    return-object v1
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-static {v0}, Lmiuix/core/util/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_f

    .line 4
    :cond_9
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 5
    :cond_f
    :goto_f
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    :goto_14
    invoke-static {v0}, Lmiuix/core/util/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_d

    .line 8
    :cond_7
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    .line 9
    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_12
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1c
    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 3

    .line 1
    sget-object v0, Lmiuix/core/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 2
    invoke-static {p0, v1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 4
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .registers 3

    .line 5
    sget-object v0, Lmiuix/core/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 6
    invoke-static {p0, v1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 8
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .registers 4

    .line 9
    sget-object v0, Lmiuix/core/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 10
    invoke-static {p0, v1, p1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 12
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .registers 3

    .line 1
    sget-object v0, Lmiuix/core/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/CharArrayWriter;

    .line 2
    invoke-static {p0, v1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    .line 4
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .registers 4

    .line 5
    sget-object v0, Lmiuix/core/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/CharArrayWriter;

    .line 6
    invoke-static {p0, v1, p1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    .line 8
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .registers 3

    .line 9
    sget-object v0, Lmiuix/core/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/CharArrayWriter;

    .line 10
    invoke-static {p0, v1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 11
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    .line 12
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_10

    .line 3
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_14

    :cond_10
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_14
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lmiuix/core/util/IOUtils;->STRING_WRITER_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/StringWriter;

    .line 2
    invoke-static {p0, v1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5
    sget-object v0, Lmiuix/core/util/IOUtils;->STRING_WRITER_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/StringWriter;

    .line 6
    invoke-static {p0, v1, p1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .registers 3

    .line 9
    sget-object v0, Lmiuix/core/util/IOUtils;->STRING_WRITER_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/StringWriter;

    .line 10
    invoke-static {p0, v1}, Lmiuix/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 11
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-interface {v0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static write(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_9
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_17

    if-eqz p2, :cond_10

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_14

    :cond_10
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_14
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_17
    return-void
.end method

.method public static write(Ljava/io/OutputStream;[B)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    return-void
.end method

.method public static write(Ljava/io/OutputStream;[C)V
    .registers 3

    if-eqz p1, :cond_e

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_e
    return-void
.end method

.method public static write(Ljava/io/OutputStream;[CLjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_21

    if-eqz p2, :cond_15

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 7
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_1e

    .line 8
    :cond_15
    :goto_15
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_1e
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_21
    return-void
.end method

.method public static write(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static write(Ljava/io/Writer;[B)V
    .registers 3

    if-eqz p1, :cond_a

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static write(Ljava/io/Writer;[BLjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_19

    if-eqz p2, :cond_11

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_16

    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :goto_16
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static write(Ljava/io/Writer;[C)V
    .registers 2

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write([C)V

    :cond_5
    return-void
.end method

.method public static writeLines(Ljava/io/OutputStream;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_7

    .line 1
    sget-object p2, Lmiuix/core/util/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 2
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4
    :cond_22
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_b

    :cond_2a
    return-void
.end method

.method public static writeLines(Ljava/io/OutputStream;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_7

    .line 5
    sget-object p2, Lmiuix/core/util/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 6
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 8
    :cond_22
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_b

    :cond_2a
    return-void
.end method

.method public static writeLines(Ljava/io/Writer;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_7

    .line 9
    sget-object p2, Lmiuix/core/util/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 10
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    :cond_1e
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b

    :cond_22
    return-void
.end method
