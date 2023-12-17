.class public Lmiui/cloud/net/XMultipartProcessor;
.super Ljava/lang/Object;
.source "XMultipartProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;


# static fields
.field private static final END:Ljava/lang/String; = "\r\n"

.field private static final MIME_TYPE:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field private final mBoundary:Ljava/lang/String;

.field private final mCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/net/XMultipartProcessor;->mCharset:Ljava/lang/String;

    return-void
.end method

.method private writeBytes(Ljava/io/OutputStream;Ljava/io/File;)V
    .registers 6

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1d

    :goto_a
    :try_start_a
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1a

    goto :goto_a

    :cond_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_19

    :catch_19
    return-void

    :catchall_1a
    move-exception p1

    move-object v1, v2

    goto :goto_1e

    :catchall_1d
    move-exception p1

    :goto_1e
    if-eqz v1, :cond_23

    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    throw p1
.end method

.method private writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/cloud/net/XMultipartProcessor;->mCharset:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const-string p1, "multipart/form-data;boundary="

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 11

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "--"

    if-eqz v0, :cond_d8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_d0

    if-eqz v3, :cond_d0

    instance-of v4, v3, Ljava/io/File;

    const-string v5, "\""

    const-string v6, "Content-Disposition: form-data; name=\""

    const-string v7, "\r\n"

    if-eqz v4, :cond_77

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    invoke-static {v1, v3, v7}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"; filename=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v1, "Content-Type: stream/octet\r\n"

    invoke-direct {p0, p2, v1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v1, "Content-Transfer-Encoding: binary\r\n"

    invoke-direct {p0, p2, v1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, p2, v7}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/io/File;)V

    invoke-direct {p0, p2, v7}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_a

    :cond_77
    instance-of v0, v3, Ljava/lang/String;

    if-eqz v0, :cond_ad

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, p2, v7}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, p2, v7}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_ad
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad entry type "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of key "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null key/value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
