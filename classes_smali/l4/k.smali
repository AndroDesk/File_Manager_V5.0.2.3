.class public final Ll4/k;
.super Ljava/io/OutputStream;
.source "ZipOutputStream.java"


# instance fields
.field public a:Ll4/d;

.field public b:[C

.field public c:Lm4/n;

.field public d:Ll4/c;

.field public e:Lm4/g;

.field public f:Lm4/h;

.field public g:La/b;

.field public h:Lj4/a;

.field public i:Ljava/util/zip/CRC32;

.field public j:Lj4/a;

.field public k:J

.field public l:Lm4/i;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[CLm4/i;Lm4/n;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    new-instance v0, La/b;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, La/b;-><init>(I)V

    .line 10
    iput-object v0, p0, Ll4/k;->g:La/b;

    .line 12
    new-instance v0, Lj4/a;

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v2}, Lj4/a;-><init>(I)V

    .line 18
    iput-object v0, p0, Ll4/k;->h:Lj4/a;

    .line 20
    new-instance v0, Ljava/util/zip/CRC32;

    .line 22
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 25
    iput-object v0, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    .line 27
    new-instance v0, Lj4/a;

    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-direct {v0, v3}, Lj4/a;-><init>(I)V

    .line 33
    iput-object v0, p0, Ll4/k;->j:Lj4/a;

    .line 35
    const-wide/16 v3, 0x0

    .line 37
    iput-wide v3, p0, Ll4/k;->k:J

    .line 39
    iput-boolean v2, p0, Ll4/k;->n:Z

    .line 41
    iget v0, p3, Lm4/i;->b:I

    .line 43
    const/16 v5, 0x200

    .line 45
    if-lt v0, v5, :cond_72

    .line 47
    new-instance v0, Ll4/d;

    .line 49
    invoke-direct {v0, p1}, Ll4/d;-><init>(Ljava/io/OutputStream;)V

    .line 52
    iput-object v0, p0, Ll4/k;->a:Ll4/d;

    .line 54
    iput-object p2, p0, Ll4/k;->b:[C

    .line 56
    iput-object p3, p0, Ll4/k;->l:Lm4/i;

    .line 58
    if-nez p4, :cond_40

    .line 60
    new-instance p4, Lm4/n;

    .line 62
    invoke-direct {p4}, Lm4/n;-><init>()V

    .line 65
    :cond_40
    invoke-virtual {v0}, Ll4/d;->e()Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_56

    .line 71
    iput-boolean v2, p4, Lm4/n;->f:Z

    .line 73
    invoke-virtual {v0}, Ll4/d;->e()Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_54

    .line 79
    iget-object p1, v0, Ll4/d;->a:Ljava/io/OutputStream;

    .line 81
    check-cast p1, Ll4/h;

    .line 83
    iget-wide v3, p1, Ll4/h;->b:J

    .line 85
    :cond_54
    iput-wide v3, p4, Lm4/n;->g:J

    .line 87
    :cond_56
    iput-object p4, p0, Ll4/k;->c:Lm4/n;

    .line 89
    iput-boolean v1, p0, Ll4/k;->m:Z

    .line 91
    iget-object p1, p0, Ll4/k;->a:Ll4/d;

    .line 93
    invoke-virtual {p1}, Ll4/d;->e()Z

    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_63

    .line 99
    goto :goto_71

    .line 100
    :cond_63
    iget-object p1, p0, Ll4/k;->j:Lj4/a;

    .line 102
    iget-object p2, p0, Ll4/k;->a:Ll4/d;

    .line 104
    sget-object p3, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 106
    invoke-virtual {p3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 109
    move-result-wide p3

    .line 110
    long-to-int p3, p3

    .line 111
    invoke-virtual {p1, p3, p2}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 114
    :goto_71
    return-void

    .line 115
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 117
    const-string p2, "Buffer size cannot be less than 512 bytes"

    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p1
.end method


# virtual methods
.method public final a()Lm4/g;
    .registers 12

    .line 1
    iget-object v0, p0, Ll4/k;->d:Ll4/c;

    .line 3
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 6
    iget-object v0, p0, Ll4/k;->d:Ll4/c;

    .line 8
    iget-object v0, v0, Ll4/c;->a:Ll4/b;

    .line 10
    iget-object v0, v0, Ll4/b;->a:Ll4/j;

    .line 12
    iget-wide v0, v0, Ll4/j;->a:J

    .line 14
    iget-object v2, p0, Ll4/k;->e:Lm4/g;

    .line 16
    iput-wide v0, v2, Lm4/b;->g:J

    .line 18
    iget-object v3, p0, Ll4/k;->f:Lm4/h;

    .line 20
    iput-wide v0, v3, Lm4/b;->g:J

    .line 22
    iget-wide v0, p0, Ll4/k;->k:J

    .line 24
    iput-wide v0, v2, Lm4/b;->h:J

    .line 26
    iput-wide v0, v3, Lm4/b;->h:J

    .line 28
    iget-boolean v0, v2, Lm4/b;->l:Z

    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v0, :cond_2d

    .line 34
    iget-object v0, v2, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 36
    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2d

    .line 44
    move v0, v3

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v0, v1

    .line 47
    :goto_2e
    if-nez v0, :cond_32

    .line 49
    move v0, v3

    .line 50
    goto :goto_3c

    .line 51
    :cond_32
    iget-object v0, v2, Lm4/b;->p:Lm4/a;

    .line 53
    iget-object v0, v0, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 55
    sget-object v2, Lnet/lingala/zip4j/model/enums/AesVersion;->ONE:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    :goto_3c
    if-eqz v0, :cond_52

    .line 63
    iget-object v0, p0, Ll4/k;->e:Lm4/g;

    .line 65
    iget-object v2, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    .line 67
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 70
    move-result-wide v4

    .line 71
    iput-wide v4, v0, Lm4/b;->f:J

    .line 73
    iget-object v0, p0, Ll4/k;->f:Lm4/h;

    .line 75
    iget-object v2, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    .line 77
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 80
    move-result-wide v4

    .line 81
    iput-wide v4, v0, Lm4/b;->f:J

    .line 83
    :cond_52
    iget-object v0, p0, Ll4/k;->c:Lm4/n;

    .line 85
    iget-object v0, v0, Lm4/n;->a:Ljava/util/ArrayList;

    .line 87
    iget-object v2, p0, Ll4/k;->f:Lm4/h;

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Ll4/k;->c:Lm4/n;

    .line 94
    iget-object v0, v0, Lm4/n;->b:Lo1/a;

    .line 96
    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    .line 98
    check-cast v0, Ljava/util/List;

    .line 100
    iget-object v2, p0, Ll4/k;->e:Lm4/g;

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Ll4/k;->f:Lm4/h;

    .line 107
    iget-boolean v2, v0, Lm4/b;->n:Z

    .line 109
    if-eqz v2, :cond_f8

    .line 111
    iget-object v2, p0, Ll4/k;->h:Lj4/a;

    .line 113
    iget-object v4, p0, Ll4/k;->a:Ll4/d;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    if-eqz v4, :cond_f0

    .line 120
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 122
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    :try_start_7c
    iget-object v6, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 127
    check-cast v6, Lj4/a;

    .line 129
    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 131
    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 134
    move-result-wide v7

    .line 135
    long-to-int v7, v7

    .line 136
    invoke-virtual {v6, v7, v5}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 139
    iget-object v6, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 141
    check-cast v6, Lj4/a;

    .line 143
    iget-object v7, v2, Lj4/a;->b:[B

    .line 145
    iget-wide v8, v0, Lm4/b;->f:J

    .line 147
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    invoke-static {v8, v9, v7}, Lj4/a;->x(J[B)V

    .line 153
    iget-object v6, v2, Lj4/a;->b:[B

    .line 155
    const/4 v7, 0x4

    .line 156
    invoke-virtual {v5, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 159
    iget-boolean v6, v0, Lm4/h;->t:Z

    .line 161
    if-eqz v6, :cond_b5

    .line 163
    iget-object v1, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 165
    check-cast v1, Lj4/a;

    .line 167
    iget-wide v6, v0, Lm4/b;->g:J

    .line 169
    invoke-virtual {v1, v6, v7, v5}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 172
    iget-object v1, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 174
    check-cast v1, Lj4/a;

    .line 176
    iget-wide v6, v0, Lm4/b;->h:J

    .line 178
    invoke-virtual {v1, v6, v7, v5}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 181
    goto :goto_db

    .line 182
    :cond_b5
    iget-object v6, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 184
    check-cast v6, Lj4/a;

    .line 186
    iget-object v8, v2, Lj4/a;->b:[B

    .line 188
    iget-wide v9, v0, Lm4/b;->g:J

    .line 190
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    invoke-static {v9, v10, v8}, Lj4/a;->x(J[B)V

    .line 196
    iget-object v6, v2, Lj4/a;->b:[B

    .line 198
    invoke-virtual {v5, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 201
    iget-object v6, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 203
    check-cast v6, Lj4/a;

    .line 205
    iget-object v8, v2, Lj4/a;->b:[B

    .line 207
    iget-wide v9, v0, Lm4/b;->h:J

    .line 209
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    invoke-static {v9, v10, v8}, Lj4/a;->x(J[B)V

    .line 215
    iget-object v0, v2, Lj4/a;->b:[B

    .line 217
    invoke-virtual {v5, v0, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 220
    :goto_db
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v4, v0}, Ll4/d;->write([B)V
    :try_end_e2
    .catchall {:try_start_7c .. :try_end_e2} :catchall_e6

    .line 227
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 230
    goto :goto_f8

    .line 231
    :catchall_e6
    move-exception v0

    .line 232
    :try_start_e7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    .line 235
    goto :goto_ef

    .line 236
    :catchall_eb
    move-exception v1

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 240
    :goto_ef
    throw v0

    .line 241
    :cond_f0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 243
    const-string v1, "input parameters is null, cannot write extended local header"

    .line 245
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 248
    throw v0

    .line 249
    :cond_f8
    :goto_f8
    const-wide/16 v0, 0x0

    .line 251
    iput-wide v0, p0, Ll4/k;->k:J

    .line 253
    iget-object v0, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    .line 255
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 258
    iget-object v0, p0, Ll4/k;->d:Ll4/c;

    .line 260
    invoke-virtual {v0}, Ll4/c;->close()V

    .line 263
    iput-boolean v3, p0, Ll4/k;->n:Z

    .line 265
    iget-object v0, p0, Ll4/k;->e:Lm4/g;

    .line 267
    return-object v0
.end method

.method public final close()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Ll4/k;->n:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-virtual {p0}, Ll4/k;->a()Lm4/g;

    .line 8
    :cond_7
    iget-object v0, p0, Ll4/k;->c:Lm4/n;

    .line 10
    iget-object v0, v0, Lm4/n;->c:Lm4/d;

    .line 12
    iget-object v1, p0, Ll4/k;->a:Ll4/d;

    .line 14
    iget-object v2, v1, Ll4/d;->a:Ljava/io/OutputStream;

    .line 16
    instance-of v3, v2, Ll4/h;

    .line 18
    if-eqz v3, :cond_1a

    .line 20
    check-cast v2, Ll4/h;

    .line 22
    invoke-virtual {v2}, Ll4/h;->getFilePointer()J

    .line 25
    move-result-wide v1

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    iget-wide v1, v1, Ll4/d;->b:J

    .line 29
    :goto_1c
    iput-wide v1, v0, Lm4/d;->f:J

    .line 31
    iget-object v0, p0, Ll4/k;->h:Lj4/a;

    .line 33
    iget-object v1, p0, Ll4/k;->c:Lm4/n;

    .line 35
    iget-object v2, p0, Ll4/k;->a:Ll4/d;

    .line 37
    iget-object v3, p0, Ll4/k;->l:Lm4/i;

    .line 39
    iget-object v3, v3, Lm4/i;->a:Ljava/nio/charset/Charset;

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lj4/a;->c(Lm4/n;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 44
    iget-object v0, p0, Ll4/k;->a:Ll4/d;

    .line 46
    invoke-virtual {v0}, Ll4/d;->close()V

    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Ll4/k;->m:Z

    .line 52
    return-void
.end method

.method public final e(Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    iget-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_17

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    move v2, v4

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    move v2, v3

    .line 25
    :goto_18
    const-string v5, "fileNameInZip is null or empty"

    .line 27
    if-nez v2, :cond_4bd

    .line 29
    iget-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 31
    sget-object v6, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 33
    const-wide/16 v7, 0x0

    .line 35
    if-ne v2, v6, :cond_3f

    .line 37
    iget-wide v9, v0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 39
    cmp-long v2, v9, v7

    .line 41
    if-gez v2, :cond_3f

    .line 43
    iget-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 45
    invoke-static {v2}, Lo4/a;->n(Ljava/lang/String;)Z

    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_3f

    .line 51
    iget-boolean v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 53
    if-nez v2, :cond_37

    .line 55
    goto :goto_3f

    .line 56
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string v2, "uncompressed size should be set for zip entries of compression type store"

    .line 60
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    :cond_3f
    :goto_3f
    new-instance v2, Lnet/lingala/zip4j/model/ZipParameters;

    .line 66
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 69
    iget-object v9, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 71
    invoke-static {v9}, Lo4/a;->n(Ljava/lang/String;)Z

    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_54

    .line 77
    iput-boolean v4, v2, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 79
    iput-object v6, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 81
    iput-boolean v4, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 83
    iput-wide v7, v2, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 85
    :cond_54
    iget-wide v9, v0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 87
    cmp-long v0, v9, v7

    .line 89
    if-gtz v0, :cond_67

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    move-result-wide v9

    .line 95
    cmp-long v0, v9, v7

    .line 97
    if-gez v0, :cond_65

    .line 99
    iput-wide v7, v2, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 101
    goto :goto_67

    .line 102
    :cond_65
    iput-wide v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 104
    :cond_67
    :goto_67
    iget-object v0, v1, Ll4/k;->g:La/b;

    .line 106
    iget-object v6, v1, Ll4/k;->a:Ll4/d;

    .line 108
    invoke-virtual {v6}, Ll4/d;->e()Z

    .line 111
    move-result v6

    .line 112
    iget-object v9, v1, Ll4/k;->a:Ll4/d;

    .line 114
    invoke-virtual {v9}, Ll4/d;->a()I

    .line 117
    move-result v9

    .line 118
    iget-object v10, v1, Ll4/k;->l:Lm4/i;

    .line 120
    iget-object v10, v10, Lm4/i;->a:Ljava/nio/charset/Charset;

    .line 122
    iget-object v11, v1, Ll4/k;->j:Lj4/a;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    new-instance v0, Lm4/g;

    .line 129
    invoke-direct {v0}, Lm4/g;-><init>()V

    .line 132
    sget-object v12, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 134
    iput-object v12, v0, Lm4/m;->a:Ljava/lang/Object;

    .line 136
    const/4 v12, 0x2

    .line 137
    new-array v13, v12, [B

    .line 139
    sget-object v14, Lnet/lingala/zip4j/headers/VersionMadeBy;->SPECIFICATION_VERSION:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 141
    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/VersionMadeBy;->getCode()B

    .line 144
    move-result v14

    .line 145
    aput-byte v14, v13, v4

    .line 147
    sget-object v14, Lnet/lingala/zip4j/headers/VersionMadeBy;->UNIX:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 149
    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/VersionMadeBy;->getCode()B

    .line 152
    move-result v14

    .line 153
    aput-byte v14, v13, v3

    .line 155
    invoke-static {}, Lo4/a;->m()Z

    .line 158
    move-result v14

    .line 159
    if-eqz v14, :cond_ac

    .line 161
    iget-boolean v14, v2, Lnet/lingala/zip4j/model/ZipParameters;->s:Z

    .line 163
    if-nez v14, :cond_ac

    .line 165
    sget-object v14, Lnet/lingala/zip4j/headers/VersionMadeBy;->WINDOWS:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 167
    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/VersionMadeBy;->getCode()B

    .line 170
    move-result v14

    .line 171
    aput-byte v14, v13, v3

    .line 173
    :cond_ac
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    invoke-static {v4, v13}, Lj4/a;->o(I[B)I

    .line 179
    move-result v11

    .line 180
    iput v11, v0, Lm4/g;->t:I

    .line 182
    sget-object v11, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->DEFAULT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 184
    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 186
    sget-object v14, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 188
    if-ne v13, v14, :cond_bf

    .line 190
    sget-object v11, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->DEFLATE_COMPRESSED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 192
    :cond_bf
    iget-wide v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 194
    const-wide v7, 0xffffffffL

    .line 199
    cmp-long v12, v12, v7

    .line 201
    if-lez v12, :cond_cc

    .line 203
    sget-object v11, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->ZIP_64_FORMAT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 205
    :cond_cc
    iget-boolean v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 207
    if-eqz v12, :cond_dc

    .line 209
    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 211
    sget-object v13, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 213
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result v12

    .line 217
    if-eqz v12, :cond_dc

    .line 219
    sget-object v11, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->AES_ENCRYPTED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 221
    :cond_dc
    invoke-virtual {v11}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->getCode()I

    .line 224
    move-result v11

    .line 225
    iput v11, v0, Lm4/b;->b:I

    .line 227
    iget-boolean v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 229
    if-eqz v11, :cond_126

    .line 231
    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 233
    sget-object v12, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 235
    if-ne v11, v12, :cond_126

    .line 237
    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 239
    iput-object v11, v0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 241
    new-instance v11, Lm4/a;

    .line 243
    invoke-direct {v11}, Lm4/a;-><init>()V

    .line 246
    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 248
    if-eqz v12, :cond_fb

    .line 250
    iput-object v12, v11, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 252
    :cond_fb
    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 254
    sget-object v13, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 256
    if-ne v12, v13, :cond_104

    .line 258
    iput-object v13, v11, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 260
    goto :goto_111

    .line 261
    :cond_104
    sget-object v13, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 263
    if-ne v12, v13, :cond_10b

    .line 265
    iput-object v13, v11, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 267
    goto :goto_111

    .line 268
    :cond_10b
    sget-object v13, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 270
    if-ne v12, v13, :cond_11e

    .line 272
    iput-object v13, v11, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 274
    :goto_111
    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 276
    iput-object v12, v11, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 278
    iput-object v11, v0, Lm4/b;->p:Lm4/a;

    .line 280
    iget v11, v0, Lm4/b;->j:I

    .line 282
    add-int/lit8 v11, v11, 0xb

    .line 284
    iput v11, v0, Lm4/b;->j:I

    .line 286
    goto :goto_12a

    .line 287
    :cond_11e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 289
    const-string v2, "invalid AES key strength"

    .line 291
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 294
    throw v0

    .line 295
    :cond_126
    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 297
    iput-object v11, v0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 299
    :goto_12a
    iget-boolean v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 301
    if-eqz v11, :cond_143

    .line 303
    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 305
    if-eqz v11, :cond_13b

    .line 307
    sget-object v12, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 309
    if-eq v11, v12, :cond_13b

    .line 311
    iput-boolean v3, v0, Lm4/b;->l:Z

    .line 313
    iput-object v11, v0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 315
    goto :goto_143

    .line 316
    :cond_13b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 318
    const-string v2, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    .line 320
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 323
    throw v0

    .line 324
    :cond_143
    :goto_143
    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 326
    invoke-static {v11}, La/b;->O(Ljava/lang/String;)Z

    .line 329
    move-result v12

    .line 330
    if-eqz v12, :cond_4b7

    .line 332
    iput-object v11, v0, Lm4/b;->k:Ljava/lang/String;

    .line 334
    invoke-static {v11, v10}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 337
    move-result-object v5

    .line 338
    array-length v5, v5

    .line 339
    iput v5, v0, Lm4/b;->i:I

    .line 341
    if-eqz v6, :cond_157

    .line 343
    goto :goto_158

    .line 344
    :cond_157
    move v9, v4

    .line 345
    :goto_158
    iput v9, v0, Lm4/g;->u:I

    .line 347
    iget-wide v5, v2, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 349
    invoke-static {v5, v6}, La/b;->x(J)J

    .line 352
    move-result-wide v5

    .line 353
    iput-wide v5, v0, Lm4/b;->e:J

    .line 355
    invoke-static {v11}, Lo4/a;->n(Ljava/lang/String;)Z

    .line 358
    move-result v5

    .line 359
    iput-boolean v5, v0, Lm4/b;->s:Z

    .line 361
    const/4 v6, 0x4

    .line 362
    new-array v9, v6, [B

    .line 364
    invoke-static {}, Lo4/a;->l()Z

    .line 367
    move-result v11

    .line 368
    const/16 v12, 0x10

    .line 370
    if-nez v11, :cond_189

    .line 372
    invoke-static {}, Lo4/a;->j()Z

    .line 375
    move-result v11

    .line 376
    if-eqz v11, :cond_17a

    .line 378
    goto :goto_189

    .line 379
    :cond_17a
    invoke-static {}, Lo4/a;->m()Z

    .line 382
    move-result v11

    .line 383
    if-eqz v11, :cond_196

    .line 385
    if-eqz v5, :cond_196

    .line 387
    aget-byte v5, v9, v4

    .line 389
    or-int/2addr v5, v12

    .line 390
    int-to-byte v5, v5

    .line 391
    aput-byte v5, v9, v4

    .line 393
    goto :goto_196

    .line 394
    :cond_189
    :goto_189
    if-eqz v5, :cond_191

    .line 396
    sget-object v5, Lo4/a;->b:[B

    .line 398
    invoke-static {v5, v4, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    goto :goto_196

    .line 402
    :cond_191
    sget-object v5, Lo4/a;->a:[B

    .line 404
    invoke-static {v5, v4, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_196
    :goto_196
    iput-object v9, v0, Lm4/g;->v:[B

    .line 409
    iget-boolean v5, v2, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 411
    if-eqz v5, :cond_1a9

    .line 413
    iget-wide v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 415
    const-wide/16 v17, -0x1

    .line 417
    cmp-long v9, v12, v17

    .line 419
    if-nez v9, :cond_1a9

    .line 421
    const-wide/16 v11, 0x0

    .line 423
    iput-wide v11, v0, Lm4/b;->h:J

    .line 425
    goto :goto_1ad

    .line 426
    :cond_1a9
    iget-wide v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 428
    iput-wide v11, v0, Lm4/b;->h:J

    .line 430
    :goto_1ad
    iget-boolean v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 432
    if-eqz v9, :cond_1bb

    .line 434
    iget-object v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 436
    sget-object v11, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 438
    if-ne v9, v11, :cond_1bb

    .line 440
    iget-wide v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    .line 442
    iput-wide v11, v0, Lm4/b;->f:J

    .line 444
    :cond_1bb
    iget-boolean v9, v0, Lm4/b;->l:Z

    .line 446
    const/4 v11, 0x2

    .line 447
    new-array v12, v11, [B

    .line 449
    if-eqz v9, :cond_1c4

    .line 451
    int-to-byte v9, v3

    .line 452
    goto :goto_1c5

    .line 453
    :cond_1c4
    move v9, v4

    .line 454
    :goto_1c5
    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 456
    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 459
    move-result v11

    .line 460
    if-eqz v11, :cond_21c

    .line 462
    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 464
    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 466
    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 469
    move-result v11

    .line 470
    if-eqz v11, :cond_1e1

    .line 472
    invoke-static {v3, v9}, La/b;->f0(IB)B

    .line 475
    move-result v9

    .line 476
    const/4 v11, 0x2

    .line 477
    invoke-static {v11, v9}, La/b;->f0(IB)B

    .line 480
    move-result v9

    .line 481
    goto :goto_21c

    .line 482
    :cond_1e1
    const/4 v11, 0x2

    .line 483
    sget-object v13, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 485
    iget-object v15, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 487
    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 490
    move-result v13

    .line 491
    if-eqz v13, :cond_1f4

    .line 493
    or-int/lit8 v9, v9, 0x2

    .line 495
    int-to-byte v9, v9

    .line 496
    invoke-static {v11, v9}, La/b;->f0(IB)B

    .line 499
    move-result v9

    .line 500
    goto :goto_21c

    .line 501
    :cond_1f4
    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 503
    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 505
    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 508
    move-result v11

    .line 509
    if-eqz v11, :cond_203

    .line 511
    invoke-static {v3, v9}, La/b;->f0(IB)B

    .line 514
    move-result v9

    .line 515
    goto :goto_21a

    .line 516
    :cond_203
    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 518
    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 520
    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 523
    move-result v11

    .line 524
    if-nez v11, :cond_217

    .line 526
    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 528
    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 530
    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 533
    move-result v11

    .line 534
    if-eqz v11, :cond_21c

    .line 536
    :cond_217
    or-int/lit8 v9, v9, 0x2

    .line 538
    int-to-byte v9, v9

    .line 539
    :goto_21a
    or-int/2addr v9, v6

    .line 540
    int-to-byte v9, v9

    .line 541
    :cond_21c
    :goto_21c
    iget-boolean v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 543
    if-eqz v11, :cond_223

    .line 545
    or-int/lit8 v9, v9, 0x8

    .line 547
    int-to-byte v9, v9

    .line 548
    :cond_223
    aput-byte v9, v12, v4

    .line 550
    if-eqz v10, :cond_22f

    .line 552
    sget-object v9, Lo4/b;->b:Ljava/nio/charset/Charset;

    .line 554
    invoke-virtual {v9, v10}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 557
    move-result v9

    .line 558
    if-eqz v9, :cond_236

    .line 560
    :cond_22f
    aget-byte v9, v12, v3

    .line 562
    or-int/lit8 v9, v9, 0x8

    .line 564
    int-to-byte v9, v9

    .line 565
    aput-byte v9, v12, v3

    .line 567
    :cond_236
    iput-object v12, v0, Lm4/b;->c:[B

    .line 569
    iget-boolean v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 571
    iput-boolean v9, v0, Lm4/b;->n:Z

    .line 573
    iget-object v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->q:Ljava/lang/String;

    .line 575
    iput-object v9, v0, Lm4/g;->x:Ljava/lang/String;

    .line 577
    iput-object v0, v1, Ll4/k;->e:Lm4/g;

    .line 579
    iget-object v9, v1, Ll4/k;->a:Ll4/d;

    .line 581
    iget-object v10, v9, Ll4/d;->a:Ljava/io/OutputStream;

    .line 583
    instance-of v11, v10, Ll4/h;

    .line 585
    if-eqz v11, :cond_251

    .line 587
    check-cast v10, Ll4/h;

    .line 589
    invoke-virtual {v10}, Ll4/h;->getFilePointer()J

    .line 592
    move-result-wide v9

    .line 593
    goto :goto_253

    .line 594
    :cond_251
    iget-wide v9, v9, Ll4/d;->b:J

    .line 596
    :goto_253
    iput-wide v9, v0, Lm4/g;->w:J

    .line 598
    iget-object v0, v1, Ll4/k;->g:La/b;

    .line 600
    iget-object v9, v1, Ll4/k;->e:Lm4/g;

    .line 602
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    new-instance v0, Lm4/h;

    .line 607
    invoke-direct {v0}, Lm4/h;-><init>()V

    .line 610
    sget-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 612
    iput-object v10, v0, Lm4/m;->a:Ljava/lang/Object;

    .line 614
    iget v10, v9, Lm4/b;->b:I

    .line 616
    iput v10, v0, Lm4/b;->b:I

    .line 618
    iget-object v10, v9, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 620
    iput-object v10, v0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 622
    iget-wide v10, v9, Lm4/b;->e:J

    .line 624
    iput-wide v10, v0, Lm4/b;->e:J

    .line 626
    iget-wide v10, v9, Lm4/b;->h:J

    .line 628
    iput-wide v10, v0, Lm4/b;->h:J

    .line 630
    iget v10, v9, Lm4/b;->i:I

    .line 632
    iput v10, v0, Lm4/b;->i:I

    .line 634
    iget-object v10, v9, Lm4/b;->k:Ljava/lang/String;

    .line 636
    iput-object v10, v0, Lm4/b;->k:Ljava/lang/String;

    .line 638
    iget-boolean v10, v9, Lm4/b;->l:Z

    .line 640
    iput-boolean v10, v0, Lm4/b;->l:Z

    .line 642
    iget-object v10, v9, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 644
    iput-object v10, v0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 646
    iget-object v10, v9, Lm4/b;->p:Lm4/a;

    .line 648
    iput-object v10, v0, Lm4/b;->p:Lm4/a;

    .line 650
    iget-wide v10, v9, Lm4/b;->f:J

    .line 652
    iput-wide v10, v0, Lm4/b;->f:J

    .line 654
    iget-wide v10, v9, Lm4/b;->g:J

    .line 656
    iput-wide v10, v0, Lm4/b;->g:J

    .line 658
    iget-object v10, v9, Lm4/b;->c:[B

    .line 660
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    .line 663
    move-result-object v10

    .line 664
    check-cast v10, [B

    .line 666
    iput-object v10, v0, Lm4/b;->c:[B

    .line 668
    iget-boolean v10, v9, Lm4/b;->n:Z

    .line 670
    iput-boolean v10, v0, Lm4/b;->n:Z

    .line 672
    iget v9, v9, Lm4/b;->j:I

    .line 674
    iput v9, v0, Lm4/b;->j:I

    .line 676
    iput-object v0, v1, Ll4/k;->f:Lm4/h;

    .line 678
    iget-object v9, v1, Ll4/k;->h:Lj4/a;

    .line 680
    iget-object v10, v1, Ll4/k;->c:Lm4/n;

    .line 682
    iget-object v11, v1, Ll4/k;->a:Ll4/d;

    .line 684
    iget-object v12, v1, Ll4/k;->l:Lm4/i;

    .line 686
    iget-object v12, v12, Lm4/i;->a:Ljava/nio/charset/Charset;

    .line 688
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .line 693
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 696
    :try_start_2b7
    iget-object v15, v9, Lj4/a;->a:Ljava/lang/Object;

    .line 698
    check-cast v15, Lj4/a;

    .line 700
    iget-object v5, v0, Lm4/m;->a:Ljava/lang/Object;

    .line 702
    check-cast v5, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 704
    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 707
    move-result-wide v7

    .line 708
    long-to-int v5, v7

    .line 709
    invoke-virtual {v15, v5, v13}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 712
    iget-object v5, v9, Lj4/a;->a:Ljava/lang/Object;

    .line 714
    check-cast v5, Lj4/a;

    .line 716
    iget v7, v0, Lm4/b;->b:I

    .line 718
    invoke-virtual {v5, v7, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 721
    iget-object v5, v0, Lm4/b;->c:[B

    .line 723
    invoke-virtual {v13, v5}, Ljava/io/OutputStream;->write([B)V

    .line 726
    iget-object v5, v9, Lj4/a;->a:Ljava/lang/Object;

    .line 728
    check-cast v5, Lj4/a;

    .line 730
    iget-object v7, v0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 732
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    .line 735
    move-result v7

    .line 736
    invoke-virtual {v5, v7, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 739
    iget-object v5, v9, Lj4/a;->a:Ljava/lang/Object;

    .line 741
    check-cast v5, Lj4/a;

    .line 743
    iget-object v7, v9, Lj4/a;->b:[B

    .line 745
    iget-wide v3, v0, Lm4/b;->e:J

    .line 747
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    invoke-static {v3, v4, v7}, Lj4/a;->x(J[B)V

    .line 753
    iget-object v3, v9, Lj4/a;->b:[B

    .line 755
    const/4 v4, 0x0

    .line 756
    invoke-virtual {v13, v3, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 759
    iget-object v3, v9, Lj4/a;->a:Ljava/lang/Object;

    .line 761
    check-cast v3, Lj4/a;

    .line 763
    iget-object v4, v9, Lj4/a;->b:[B

    .line 765
    iget-wide v6, v0, Lm4/b;->f:J

    .line 767
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    invoke-static {v6, v7, v4}, Lj4/a;->x(J[B)V

    .line 773
    iget-object v3, v9, Lj4/a;->b:[B

    .line 775
    const/4 v4, 0x4

    .line 776
    const/4 v5, 0x0

    .line 777
    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 780
    iget-wide v3, v0, Lm4/b;->g:J

    .line 782
    const-wide v6, 0xffffffffL

    .line 787
    cmp-long v16, v3, v6

    .line 789
    if-gez v16, :cond_321

    .line 791
    move-object/from16 v18, v9

    .line 793
    iget-wide v8, v0, Lm4/b;->h:J

    .line 795
    cmp-long v8, v8, v6

    .line 797
    if-ltz v8, :cond_31f

    .line 799
    goto :goto_323

    .line 800
    :cond_31f
    const/4 v6, 0x0

    .line 801
    goto :goto_324

    .line 802
    :cond_321
    move-object/from16 v18, v9

    .line 804
    :goto_323
    const/4 v6, 0x1

    .line 805
    :goto_324
    if-eqz v6, :cond_34c

    .line 807
    move-object/from16 v7, v18

    .line 809
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 811
    check-cast v3, Lj4/a;

    .line 813
    iget-object v4, v7, Lj4/a;->b:[B

    .line 815
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    const-wide v8, 0xffffffffL

    .line 823
    invoke-static {v8, v9, v4}, Lj4/a;->x(J[B)V

    .line 826
    iget-object v3, v7, Lj4/a;->b:[B

    .line 828
    const/4 v4, 0x4

    .line 829
    const/4 v5, 0x0

    .line 830
    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 833
    iget-object v3, v7, Lj4/a;->b:[B

    .line 835
    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 838
    const/4 v3, 0x1

    .line 839
    iput-boolean v3, v10, Lm4/n;->i:Z

    .line 841
    iput-boolean v3, v0, Lm4/h;->t:Z

    .line 843
    const/4 v5, 0x0

    .line 844
    goto :goto_378

    .line 845
    :cond_34c
    move-object/from16 v7, v18

    .line 847
    iget-object v9, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 849
    check-cast v9, Lj4/a;

    .line 851
    iget-object v10, v7, Lj4/a;->b:[B

    .line 853
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    invoke-static {v3, v4, v10}, Lj4/a;->x(J[B)V

    .line 859
    iget-object v3, v7, Lj4/a;->b:[B

    .line 861
    const/4 v4, 0x4

    .line 862
    const/4 v5, 0x0

    .line 863
    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 866
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 868
    check-cast v3, Lj4/a;

    .line 870
    iget-object v4, v7, Lj4/a;->b:[B

    .line 872
    iget-wide v9, v0, Lm4/b;->h:J

    .line 874
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    invoke-static {v9, v10, v4}, Lj4/a;->x(J[B)V

    .line 880
    iget-object v3, v7, Lj4/a;->b:[B

    .line 882
    const/4 v4, 0x4

    .line 883
    const/4 v5, 0x0

    .line 884
    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 887
    iput-boolean v5, v0, Lm4/h;->t:Z

    .line 889
    :goto_378
    new-array v3, v5, [B

    .line 891
    iget-object v4, v0, Lm4/b;->k:Ljava/lang/String;

    .line 893
    invoke-static {v4}, La/b;->O(Ljava/lang/String;)Z

    .line 896
    move-result v4

    .line 897
    if-eqz v4, :cond_388

    .line 899
    iget-object v3, v0, Lm4/b;->k:Ljava/lang/String;

    .line 901
    invoke-static {v3, v12}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 904
    move-result-object v3

    .line 905
    :cond_388
    iget-object v4, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 907
    check-cast v4, Lj4/a;

    .line 909
    array-length v5, v3

    .line 910
    invoke-virtual {v4, v5, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 913
    if-eqz v6, :cond_395

    .line 915
    const/16 v4, 0x14

    .line 917
    goto :goto_396

    .line 918
    :cond_395
    const/4 v4, 0x0

    .line 919
    :goto_396
    iget-object v5, v0, Lm4/b;->p:Lm4/a;

    .line 921
    if-eqz v5, :cond_39c

    .line 923
    add-int/lit8 v4, v4, 0xb

    .line 925
    :cond_39c
    iget-object v5, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 927
    check-cast v5, Lj4/a;

    .line 929
    invoke-virtual {v5, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 932
    array-length v4, v3

    .line 933
    if-lez v4, :cond_3a9

    .line 935
    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    .line 938
    :cond_3a9
    if-eqz v6, :cond_3d4

    .line 940
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 942
    check-cast v3, Lj4/a;

    .line 944
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 946
    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 949
    move-result-wide v4

    .line 950
    long-to-int v4, v4

    .line 951
    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 954
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 956
    check-cast v3, Lj4/a;

    .line 958
    const/16 v4, 0x10

    .line 960
    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 963
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 965
    check-cast v3, Lj4/a;

    .line 967
    iget-wide v4, v0, Lm4/b;->h:J

    .line 969
    invoke-virtual {v3, v4, v5, v13}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 972
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 974
    check-cast v3, Lj4/a;

    .line 976
    iget-wide v4, v0, Lm4/b;->g:J

    .line 978
    invoke-virtual {v3, v4, v5, v13}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 981
    :cond_3d4
    iget-object v0, v0, Lm4/b;->p:Lm4/a;

    .line 983
    if-eqz v0, :cond_424

    .line 985
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 987
    check-cast v3, Lj4/a;

    .line 989
    iget-object v4, v0, Lm4/m;->a:Ljava/lang/Object;

    .line 991
    check-cast v4, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 993
    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 996
    move-result-wide v4

    .line 997
    long-to-int v4, v4

    .line 998
    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 1001
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 1003
    check-cast v3, Lj4/a;

    .line 1005
    iget v4, v0, Lm4/a;->b:I

    .line 1007
    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 1010
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 1012
    check-cast v3, Lj4/a;

    .line 1014
    iget-object v4, v0, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 1016
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/enums/AesVersion;->getVersionNumber()I

    .line 1019
    move-result v4

    .line 1020
    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 1023
    iget-object v3, v0, Lm4/a;->d:Ljava/lang/String;

    .line 1025
    invoke-static {v3, v12}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1028
    move-result-object v3

    .line 1029
    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1032
    const/4 v3, 0x1

    .line 1033
    new-array v3, v3, [B

    .line 1035
    iget-object v4, v0, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 1037
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    .line 1040
    move-result v4

    .line 1041
    int-to-byte v4, v4

    .line 1042
    const/4 v5, 0x0

    .line 1043
    aput-byte v4, v3, v5

    .line 1045
    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1048
    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 1050
    check-cast v3, Lj4/a;

    .line 1052
    iget-object v0, v0, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 1054
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    .line 1057
    move-result v0

    .line 1058
    invoke-virtual {v3, v0, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 1061
    :cond_424
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1064
    move-result-object v0

    .line 1065
    invoke-virtual {v11, v0}, Ll4/d;->write([B)V
    :try_end_42b
    .catchall {:try_start_2b7 .. :try_end_42b} :catchall_4ab

    .line 1068
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1071
    new-instance v0, Ll4/j;

    .line 1073
    iget-object v3, v1, Ll4/k;->a:Ll4/d;

    .line 1075
    invoke-direct {v0, v3}, Ll4/j;-><init>(Ll4/d;)V

    .line 1078
    iget-boolean v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 1080
    if-nez v3, :cond_43f

    .line 1082
    new-instance v3, Ll4/f;

    .line 1084
    invoke-direct {v3, v0, v2}, Ll4/f;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 1087
    goto :goto_465

    .line 1088
    :cond_43f
    iget-object v3, v1, Ll4/k;->b:[C

    .line 1090
    if-eqz v3, :cond_4a3

    .line 1092
    array-length v4, v3

    .line 1093
    if-eqz v4, :cond_4a3

    .line 1095
    iget-object v4, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 1097
    sget-object v5, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 1099
    if-ne v4, v5, :cond_457

    .line 1101
    new-instance v4, Ll4/a;

    .line 1103
    iget-object v5, v1, Ll4/k;->l:Lm4/i;

    .line 1105
    iget-boolean v5, v5, Lm4/i;->c:Z

    .line 1107
    invoke-direct {v4, v0, v2, v3, v5}, Ll4/a;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    .line 1110
    :goto_455
    move-object v3, v4

    .line 1111
    goto :goto_465

    .line 1112
    :cond_457
    sget-object v5, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 1114
    if-ne v4, v5, :cond_480

    .line 1116
    new-instance v4, Ll4/l;

    .line 1118
    iget-object v5, v1, Ll4/k;->l:Lm4/i;

    .line 1120
    iget-boolean v5, v5, Lm4/i;->c:Z

    .line 1122
    invoke-direct {v4, v0, v2, v3, v5}, Ll4/l;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    .line 1125
    goto :goto_455

    .line 1126
    :goto_465
    iget-object v0, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 1128
    if-ne v0, v14, :cond_475

    .line 1130
    new-instance v0, Ll4/e;

    .line 1132
    iget-object v2, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 1134
    iget-object v4, v1, Ll4/k;->l:Lm4/i;

    .line 1136
    iget v4, v4, Lm4/i;->b:I

    .line 1138
    invoke-direct {v0, v3, v2, v4}, Ll4/e;-><init>(Ll4/b;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V

    .line 1141
    goto :goto_47a

    .line 1142
    :cond_475
    new-instance v0, Ll4/i;

    .line 1144
    invoke-direct {v0, v3}, Ll4/i;-><init>(Ll4/b;)V

    .line 1147
    :goto_47a
    iput-object v0, v1, Ll4/k;->d:Ll4/c;

    .line 1149
    const/4 v0, 0x0

    .line 1150
    iput-boolean v0, v1, Ll4/k;->n:Z

    .line 1152
    return-void

    .line 1153
    :cond_480
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 1155
    if-ne v4, v0, :cond_49b

    .line 1157
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1161
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1167
    const-string v0, " encryption method is not supported"

    .line 1169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1175
    move-result-object v0

    .line 1176
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1179
    throw v2

    .line 1180
    :cond_49b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 1182
    const-string v2, "Invalid encryption method"

    .line 1184
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1187
    throw v0

    .line 1188
    :cond_4a3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 1190
    const-string v2, "password not set"

    .line 1192
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1195
    throw v0

    .line 1196
    :catchall_4ab
    move-exception v0

    .line 1197
    move-object v2, v0

    .line 1198
    :try_start_4ad
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b0
    .catchall {:try_start_4ad .. :try_end_4b0} :catchall_4b1

    .line 1201
    goto :goto_4b6

    .line 1202
    :catchall_4b1
    move-exception v0

    .line 1203
    move-object v3, v0

    .line 1204
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1207
    :goto_4b6
    throw v2

    .line 1208
    :cond_4b7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 1210
    invoke-direct {v0, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1213
    throw v0

    .line 1214
    :cond_4bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1216
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1219
    throw v0
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Ll4/k;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/k;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 6

    .line 3
    iget-boolean v0, p0, Ll4/k;->m:Z

    if-nez v0, :cond_15

    .line 4
    iget-object v0, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 5
    iget-object v0, p0, Ll4/k;->d:Ll4/c;

    invoke-virtual {v0, p1, p2, p3}, Ll4/c;->write([BII)V

    .line 6
    iget-wide p1, p0, Ll4/k;->k:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ll4/k;->k:J

    return-void

    .line 7
    :cond_15
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
