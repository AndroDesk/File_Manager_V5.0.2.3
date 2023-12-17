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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lmiui/cloud/net/XMultipartProcessor;->mCharset:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private writeBytes(Ljava/io/OutputStream;Ljava/io/File;)V
    .registers 6

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1d

    .line 3
    :goto_a
    :try_start_a
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_16

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1a

    goto :goto_a

    .line 5
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

    .line 6
    :catch_23
    :cond_23
    throw p1
.end method

.method private writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XMultipartProcessor;->mCharset:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string p1, "multipart/form-data;boundary="

    .line 3
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 11

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    const-string v1, "--"

    .line 17
    if-eqz v0, :cond_d8

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    if-eqz v2, :cond_d0

    .line 37
    if-eqz v3, :cond_d0

    .line 39
    instance-of v4, v3, Ljava/io/File;

    .line 41
    const-string v5, "\""

    .line 43
    const-string v6, "Content-Disposition: form-data; name=\""

    .line 45
    const-string v7, "\r\n"

    .line 47
    if-eqz v4, :cond_77

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/io/File;

    .line 55
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v1

    .line 59
    iget-object v3, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    .line 61
    invoke-static {v1, v3, v7}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-direct {p0, p2, v1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, "\"; filename=\""

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-direct {p0, p2, v1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 100
    const-string v1, "Content-Type: stream/octet\r\n"

    .line 102
    invoke-direct {p0, p2, v1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 105
    const-string v1, "Content-Transfer-Encoding: binary\r\n"

    .line 107
    invoke-direct {p0, p2, v1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p2, v7}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p2, v0}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/io/File;)V

    .line 116
    invoke-direct {p0, p2, v7}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 119
    goto :goto_a

    .line 120
    :cond_77
    instance-of v0, v3, Ljava/lang/String;

    .line 122
    if-eqz v0, :cond_ad

    .line 124
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    .line 130
    invoke-static {v0, v1, v7}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p0, p2, v0}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    invoke-direct {p0, p2, v0}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p2, v7}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 164
    check-cast v3, Ljava/lang/String;

    .line 166
    invoke-direct {p0, p2, v3}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p2, v7}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 172
    goto/16 :goto_a

    .line 174
    :cond_ad
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 176
    const-string p2, "bad entry type "

    .line 178
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, " of key "

    .line 195
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p2

    .line 205
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    throw p1

    .line 209
    :cond_d0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 211
    const-string p2, "null key/value"

    .line 213
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    throw p1

    .line 217
    :cond_d8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    move-result-object p1

    .line 221
    iget-object v0, p0, Lmiui/cloud/net/XMultipartProcessor;->mBoundary:Ljava/lang/String;

    .line 223
    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    invoke-direct {p0, p2, p1}, Lmiui/cloud/net/XMultipartProcessor;->writeBytes(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 230
    return-void
.end method
