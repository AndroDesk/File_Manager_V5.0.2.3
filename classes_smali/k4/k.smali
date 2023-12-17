.class public final Lk4/k;
.super Ljava/io/InputStream;
.source "ZipInputStream.java"


# instance fields
.field public a:Ljava/io/PushbackInputStream;

.field public b:Lk4/c;

.field public c:Lj4/a;

.field public d:[C

.field public e:Lm4/h;

.field public f:Ljava/util/zip/CRC32;

.field public g:Z

.field public h:Lm4/i;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lk4/h;[CLm4/i;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    new-instance v0, Lj4/a;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lj4/a;-><init>(I)V

    .line 10
    iput-object v0, p0, Lk4/k;->c:Lj4/a;

    .line 12
    new-instance v0, Ljava/util/zip/CRC32;

    .line 14
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 17
    iput-object v0, p0, Lk4/k;->f:Ljava/util/zip/CRC32;

    .line 19
    iput-boolean v1, p0, Lk4/k;->g:Z

    .line 21
    iput-boolean v1, p0, Lk4/k;->i:Z

    .line 23
    iput-boolean v1, p0, Lk4/k;->j:Z

    .line 25
    iget v0, p3, Lm4/i;->b:I

    .line 27
    const/16 v1, 0x200

    .line 29
    if-lt v0, v1, :cond_2c

    .line 31
    new-instance v0, Ljava/io/PushbackInputStream;

    .line 33
    iget v1, p3, Lm4/i;->b:I

    .line 35
    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 38
    iput-object v0, p0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    .line 40
    iput-object p2, p0, Lk4/k;->d:[C

    .line 42
    iput-object p3, p0, Lk4/k;->h:Lm4/i;

    .line 44
    return-void

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string p2, "Buffer size cannot be less than 512 bytes"

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method


# virtual methods
.method public final a()V
    .registers 11

    .line 1
    iget-object v0, p0, Lk4/k;->b:Lk4/c;

    .line 3
    iget-object v1, p0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    .line 5
    invoke-virtual {v0, v1}, Lk4/c;->e(Ljava/io/PushbackInputStream;)I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lk4/k;->b:Lk4/c;

    .line 11
    iget-object v2, p0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    .line 13
    invoke-virtual {v1, v2, v0}, Lk4/c;->a(Ljava/io/PushbackInputStream;I)V

    .line 16
    iget-object v0, p0, Lk4/k;->e:Lm4/h;

    .line 18
    iget-boolean v1, v0, Lm4/b;->n:Z

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_b0

    .line 24
    iget-boolean v1, p0, Lk4/k;->g:Z

    .line 26
    if-eqz v1, :cond_1d

    .line 28
    goto/16 :goto_b0

    .line 30
    :cond_1d
    iget-object v1, p0, Lk4/k;->c:Lj4/a;

    .line 32
    iget-object v4, p0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    .line 34
    iget-object v0, v0, Lm4/b;->r:Ljava/util/List;

    .line 36
    if-nez v0, :cond_26

    .line 38
    goto :goto_44

    .line 39
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_44

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lm4/f;

    .line 55
    iget-wide v5, v5, Lm4/f;->b:J

    .line 57
    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 59
    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 62
    move-result-wide v7

    .line 63
    cmp-long v5, v5, v7

    .line 65
    if-nez v5, :cond_2a

    .line 67
    move v0, v2

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    :goto_44
    move v0, v3

    .line 70
    :goto_45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    const/4 v5, 0x4

    .line 74
    new-array v5, v5, [B

    .line 76
    invoke-static {v4, v5}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    .line 79
    iget-object v6, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 81
    check-cast v6, Lj4/a;

    .line 83
    invoke-virtual {v6, v3, v5}, Lj4/a;->m(I[B)J

    .line 86
    move-result-wide v6

    .line 87
    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 89
    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 92
    move-result-wide v8

    .line 93
    cmp-long v8, v6, v8

    .line 95
    if-nez v8, :cond_6b

    .line 97
    invoke-static {v4, v5}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    .line 100
    iget-object v6, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 102
    check-cast v6, Lj4/a;

    .line 104
    invoke-virtual {v6, v3, v5}, Lj4/a;->m(I[B)J

    .line 107
    move-result-wide v6

    .line 108
    :cond_6b
    if-eqz v0, :cond_96

    .line 110
    iget-object v0, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 112
    check-cast v0, Lj4/a;

    .line 114
    iget-object v5, v0, Lj4/a;->a:Ljava/lang/Object;

    .line 116
    check-cast v5, [B

    .line 118
    array-length v8, v5

    .line 119
    invoke-static {v4, v5, v8}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    .line 122
    iget-object v5, v0, Lj4/a;->a:Ljava/lang/Object;

    .line 124
    check-cast v5, [B

    .line 126
    invoke-virtual {v0, v3, v5}, Lj4/a;->m(I[B)J

    .line 129
    move-result-wide v8

    .line 130
    iget-object v0, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 132
    check-cast v0, Lj4/a;

    .line 134
    iget-object v1, v0, Lj4/a;->a:Ljava/lang/Object;

    .line 136
    check-cast v1, [B

    .line 138
    array-length v5, v1

    .line 139
    invoke-static {v4, v1, v5}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    .line 142
    iget-object v1, v0, Lj4/a;->a:Ljava/lang/Object;

    .line 144
    check-cast v1, [B

    .line 146
    invoke-virtual {v0, v3, v1}, Lj4/a;->m(I[B)J

    .line 149
    move-result-wide v0

    .line 150
    goto :goto_a8

    .line 151
    :cond_96
    iget-object v0, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 153
    check-cast v0, Lj4/a;

    .line 155
    invoke-virtual {v0, v4}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    .line 158
    move-result v0

    .line 159
    int-to-long v8, v0

    .line 160
    iget-object v0, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 162
    check-cast v0, Lj4/a;

    .line 164
    invoke-virtual {v0, v4}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    .line 167
    move-result v0

    .line 168
    int-to-long v0, v0

    .line 169
    :goto_a8
    iget-object v4, p0, Lk4/k;->e:Lm4/h;

    .line 171
    iput-wide v8, v4, Lm4/b;->g:J

    .line 173
    iput-wide v0, v4, Lm4/b;->h:J

    .line 175
    iput-wide v6, v4, Lm4/b;->f:J

    .line 177
    :cond_b0
    :goto_b0
    iget-object v0, p0, Lk4/k;->e:Lm4/h;

    .line 179
    iget-object v1, v0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 181
    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 183
    if-ne v1, v4, :cond_c5

    .line 185
    iget-object v0, v0, Lm4/b;->p:Lm4/a;

    .line 187
    iget-object v0, v0, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 189
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_c5

    .line 197
    goto :goto_102

    .line 198
    :cond_c5
    iget-object v0, p0, Lk4/k;->e:Lm4/h;

    .line 200
    iget-wide v0, v0, Lm4/b;->f:J

    .line 202
    iget-object v4, p0, Lk4/k;->f:Ljava/util/zip/CRC32;

    .line 204
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    .line 207
    move-result-wide v4

    .line 208
    cmp-long v0, v0, v4

    .line 210
    if-eqz v0, :cond_102

    .line 212
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 214
    iget-object v1, p0, Lk4/k;->e:Lm4/h;

    .line 216
    iget-boolean v4, v1, Lm4/b;->l:Z

    .line 218
    if-eqz v4, :cond_e6

    .line 220
    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 222
    iget-object v1, v1, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 224
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_e6

    .line 230
    goto :goto_e7

    .line 231
    :cond_e6
    move v2, v3

    .line 232
    :goto_e7
    if-eqz v2, :cond_eb

    .line 234
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 236
    :cond_eb
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 238
    const-string v2, "Reached end of entry, but crc verification failed for "

    .line 240
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    move-result-object v2

    .line 244
    iget-object v3, p0, Lk4/k;->e:Lm4/h;

    .line 246
    iget-object v3, v3, Lm4/b;->k:Ljava/lang/String;

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v2

    .line 255
    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 258
    throw v1

    .line 259
    :cond_102
    :goto_102
    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lk4/k;->e:Lm4/h;

    .line 262
    iget-object v0, p0, Lk4/k;->f:Ljava/util/zip/CRC32;

    .line 264
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 267
    iput-boolean v2, p0, Lk4/k;->j:Z

    .line 269
    return-void
.end method

.method public final available()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lk4/k;->i:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    iget-boolean v0, p0, Lk4/k;->j:Z

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 12
    const-string v1, "Stream closed"

    .line 14
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lk4/k;->i:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lk4/k;->b:Lk4/c;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Lk4/c;->close()V

    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lk4/k;->i:Z

    .line 16
    return-void
.end method

.method public final e(Lm4/g;)Lm4/h;
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lk4/k;->c:Lj4/a;

    .line 7
    iget-object v3, v0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    .line 9
    iget-object v4, v0, Lk4/k;->h:Lm4/i;

    .line 11
    iget-object v4, v4, Lm4/i;->a:Ljava/nio/charset/Charset;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v5, Lm4/h;

    .line 18
    invoke-direct {v5}, Lm4/h;-><init>()V

    .line 21
    const/4 v6, 0x4

    .line 22
    new-array v7, v6, [B

    .line 24
    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 26
    check-cast v8, Lj4/a;

    .line 28
    invoke-virtual {v8, v3}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    .line 31
    move-result v8

    .line 32
    int-to-long v9, v8

    .line 33
    sget-object v11, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 35
    invoke-virtual {v11}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 38
    move-result-wide v11

    .line 39
    cmp-long v9, v9, v11

    .line 41
    if-nez v9, :cond_32

    .line 43
    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 45
    check-cast v8, Lj4/a;

    .line 47
    invoke-virtual {v8, v3}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    .line 50
    move-result v8

    .line 51
    :cond_32
    int-to-long v8, v8

    .line 52
    sget-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 54
    invoke-virtual {v10}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 57
    move-result-wide v11

    .line 58
    cmp-long v8, v8, v11

    .line 60
    const-string v9, "\\"

    .line 62
    const-string v11, "/"

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x1

    .line 66
    if-eqz v8, :cond_48

    .line 68
    const/4 v5, 0x0

    .line 69
    const-wide/16 v2, -0x1

    .line 71
    goto/16 :goto_194

    .line 73
    :cond_48
    iput-object v10, v5, Lm4/m;->a:Ljava/lang/Object;

    .line 75
    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 77
    check-cast v8, Lj4/a;

    .line 79
    invoke-virtual {v8, v3}, Lj4/a;->p(Ljava/io/PushbackInputStream;)I

    .line 82
    move-result v8

    .line 83
    iput v8, v5, Lm4/b;->b:I

    .line 85
    const/4 v8, 0x2

    .line 86
    new-array v10, v8, [B

    .line 88
    invoke-static {v3, v10}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    .line 91
    move-result v14

    .line 92
    if-ne v14, v8, :cond_2bc

    .line 94
    aget-byte v8, v10, v12

    .line 96
    invoke-static {v12, v8}, La/b;->J(IB)Z

    .line 99
    move-result v8

    .line 100
    iput-boolean v8, v5, Lm4/b;->l:Z

    .line 102
    aget-byte v8, v10, v12

    .line 104
    const/4 v14, 0x3

    .line 105
    invoke-static {v14, v8}, La/b;->J(IB)Z

    .line 108
    move-result v8

    .line 109
    iput-boolean v8, v5, Lm4/b;->n:Z

    .line 111
    aget-byte v8, v10, v13

    .line 113
    invoke-static {v14, v8}, La/b;->J(IB)Z

    .line 116
    move-result v8

    .line 117
    iput-boolean v8, v5, Lm4/b;->q:Z

    .line 119
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    .line 122
    move-result-object v8

    .line 123
    check-cast v8, [B

    .line 125
    iput-object v8, v5, Lm4/b;->c:[B

    .line 127
    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 129
    check-cast v8, Lj4/a;

    .line 131
    invoke-virtual {v8, v3}, Lj4/a;->p(Ljava/io/PushbackInputStream;)I

    .line 134
    move-result v8

    .line 135
    invoke-static {v8}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 138
    move-result-object v8

    .line 139
    iput-object v8, v5, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 141
    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 143
    check-cast v8, Lj4/a;

    .line 145
    invoke-virtual {v8, v3}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    .line 148
    move-result v8

    .line 149
    int-to-long v14, v8

    .line 150
    iput-wide v14, v5, Lm4/b;->e:J

    .line 152
    invoke-static {v3, v7}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    .line 155
    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 157
    check-cast v8, Lj4/a;

    .line 159
    invoke-virtual {v8, v12, v7}, Lj4/a;->m(I[B)J

    .line 162
    move-result-wide v7

    .line 163
    iput-wide v7, v5, Lm4/b;->f:J

    .line 165
    iget-object v7, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 167
    check-cast v7, Lj4/a;

    .line 169
    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 171
    check-cast v8, [B

    .line 173
    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 176
    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 178
    check-cast v8, [B

    .line 180
    invoke-static {v3, v8, v6}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    .line 183
    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 185
    check-cast v8, [B

    .line 187
    invoke-virtual {v7, v12, v8}, Lj4/a;->m(I[B)J

    .line 190
    move-result-wide v7

    .line 191
    iput-wide v7, v5, Lm4/b;->g:J

    .line 193
    iget-object v7, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 195
    check-cast v7, Lj4/a;

    .line 197
    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 199
    check-cast v8, [B

    .line 201
    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 204
    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 206
    check-cast v8, [B

    .line 208
    invoke-static {v3, v8, v6}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    .line 211
    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    .line 213
    check-cast v8, [B

    .line 215
    invoke-virtual {v7, v12, v8}, Lj4/a;->m(I[B)J

    .line 218
    move-result-wide v7

    .line 219
    iput-wide v7, v5, Lm4/b;->h:J

    .line 221
    iget-object v7, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 223
    check-cast v7, Lj4/a;

    .line 225
    invoke-virtual {v7, v3}, Lj4/a;->p(Ljava/io/PushbackInputStream;)I

    .line 228
    move-result v7

    .line 229
    iput v7, v5, Lm4/b;->i:I

    .line 231
    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 233
    check-cast v8, Lj4/a;

    .line 235
    invoke-virtual {v8, v3}, Lj4/a;->p(Ljava/io/PushbackInputStream;)I

    .line 238
    move-result v8

    .line 239
    iput v8, v5, Lm4/b;->j:I

    .line 241
    if-lez v7, :cond_2b4

    .line 243
    new-array v7, v7, [B

    .line 245
    invoke-static {v3, v7}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    .line 248
    iget-boolean v8, v5, Lm4/b;->q:Z

    .line 250
    invoke-static {v7, v8, v4}, La/b;->t([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 253
    move-result-object v4

    .line 254
    iput-object v4, v5, Lm4/b;->k:Ljava/lang/String;

    .line 256
    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 259
    move-result v7

    .line 260
    if-nez v7, :cond_10e

    .line 262
    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_10c

    .line 268
    goto :goto_10e

    .line 269
    :cond_10c
    move v4, v12

    .line 270
    goto :goto_10f

    .line 271
    :cond_10e
    :goto_10e
    move v4, v13

    .line 272
    :goto_10f
    iput-boolean v4, v5, Lm4/b;->s:Z

    .line 274
    iget v4, v5, Lm4/b;->j:I

    .line 276
    if-gtz v4, :cond_116

    .line 278
    goto :goto_130

    .line 279
    :cond_116
    if-ge v4, v6, :cond_120

    .line 281
    if-lez v4, :cond_11e

    .line 283
    int-to-long v6, v4

    .line 284
    invoke-virtual {v3, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 287
    :cond_11e
    const/4 v3, 0x0

    .line 288
    goto :goto_12e

    .line 289
    :cond_120
    new-array v6, v4, [B

    .line 291
    invoke-static {v3, v6}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    .line 294
    :try_start_125
    invoke-virtual {v2, v4, v6}, Lj4/a;->d(I[B)Ljava/util/ArrayList;

    .line 297
    move-result-object v3
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_129} :catch_12a

    .line 298
    goto :goto_12e

    .line 299
    :catch_12a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 302
    move-result-object v3

    .line 303
    :goto_12e
    iput-object v3, v5, Lm4/b;->r:Ljava/util/List;

    .line 305
    :goto_130
    iget-object v3, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 307
    move-object v15, v3

    .line 308
    check-cast v15, Lj4/a;

    .line 310
    iget-object v3, v5, Lm4/b;->r:Ljava/util/List;

    .line 312
    if-eqz v3, :cond_16a

    .line 314
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 317
    move-result v3

    .line 318
    if-gtz v3, :cond_140

    .line 320
    goto :goto_16a

    .line 321
    :cond_140
    iget-object v14, v5, Lm4/b;->r:Ljava/util/List;

    .line 323
    iget-wide v3, v5, Lm4/b;->h:J

    .line 325
    iget-wide v6, v5, Lm4/b;->g:J

    .line 327
    const-wide/16 v20, 0x0

    .line 329
    const/16 v22, 0x0

    .line 331
    move-wide/from16 v16, v3

    .line 333
    move-wide/from16 v18, v6

    .line 335
    invoke-static/range {v14 .. v22}, Lj4/a;->r(Ljava/util/List;Lj4/a;JJJI)Lm4/l;

    .line 338
    move-result-object v3

    .line 339
    if-nez v3, :cond_155

    .line 341
    goto :goto_16a

    .line 342
    :cond_155
    iput-object v3, v5, Lm4/b;->o:Lm4/l;

    .line 344
    iget-wide v6, v3, Lm4/l;->c:J

    .line 346
    const-wide/16 v14, -0x1

    .line 348
    cmp-long v4, v6, v14

    .line 350
    if-eqz v4, :cond_161

    .line 352
    iput-wide v6, v5, Lm4/b;->h:J

    .line 354
    :cond_161
    iget-wide v3, v3, Lm4/l;->b:J

    .line 356
    cmp-long v6, v3, v14

    .line 358
    if-eqz v6, :cond_16d

    .line 360
    iput-wide v3, v5, Lm4/b;->g:J

    .line 362
    goto :goto_16d

    .line 363
    :cond_16a
    :goto_16a
    const-wide/16 v3, -0x1

    .line 365
    move-wide v14, v3

    .line 366
    :cond_16d
    :goto_16d
    iget-object v2, v2, Lj4/a;->a:Ljava/lang/Object;

    .line 368
    check-cast v2, Lj4/a;

    .line 370
    invoke-static {v5, v2}, Lj4/a;->f(Lm4/b;Lj4/a;)V

    .line 373
    iget-boolean v2, v5, Lm4/b;->l:Z

    .line 375
    if-eqz v2, :cond_193

    .line 377
    iget-object v2, v5, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 379
    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 381
    if-ne v2, v3, :cond_17f

    .line 383
    goto :goto_193

    .line 384
    :cond_17f
    iget-object v2, v5, Lm4/b;->c:[B

    .line 386
    aget-byte v2, v2, v12

    .line 388
    const/4 v3, 0x6

    .line 389
    invoke-static {v3, v2}, La/b;->J(IB)Z

    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_18f

    .line 395
    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 397
    iput-object v2, v5, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 399
    goto :goto_193

    .line 400
    :cond_18f
    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 402
    iput-object v2, v5, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 404
    :cond_193
    :goto_193
    move-wide v2, v14

    .line 405
    :goto_194
    iput-object v5, v0, Lk4/k;->e:Lm4/h;

    .line 407
    if-nez v5, :cond_19a

    .line 409
    const/4 v1, 0x0

    .line 410
    return-object v1

    .line 411
    :cond_19a
    iget-boolean v4, v5, Lm4/b;->l:Z

    .line 413
    iget-object v4, v5, Lm4/b;->k:Ljava/lang/String;

    .line 415
    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 418
    move-result v6

    .line 419
    if-nez v6, :cond_1ad

    .line 421
    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 424
    move-result v4

    .line 425
    if-eqz v4, :cond_1ab

    .line 427
    goto :goto_1ad

    .line 428
    :cond_1ab
    move v4, v12

    .line 429
    goto :goto_1ae

    .line 430
    :cond_1ad
    :goto_1ad
    move v4, v13

    .line 431
    :goto_1ae
    if-nez v4, :cond_1d3

    .line 433
    iget-object v4, v5, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 435
    sget-object v6, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 437
    if-ne v4, v6, :cond_1d3

    .line 439
    iget-wide v6, v5, Lm4/b;->h:J

    .line 441
    const-wide/16 v8, 0x0

    .line 443
    cmp-long v4, v6, v8

    .line 445
    if-ltz v4, :cond_1bf

    .line 447
    goto :goto_1d3

    .line 448
    :cond_1bf
    new-instance v1, Ljava/io/IOException;

    .line 450
    const-string v2, "Invalid local file header for: "

    .line 452
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    move-result-object v2

    .line 456
    iget-object v3, v5, Lm4/b;->k:Ljava/lang/String;

    .line 458
    const-string v4, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    .line 460
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    move-result-object v2

    .line 464
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 467
    throw v1

    .line 468
    :cond_1d3
    :goto_1d3
    iget-object v4, v0, Lk4/k;->f:Ljava/util/zip/CRC32;

    .line 470
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 473
    if-eqz v1, :cond_1ef

    .line 475
    iget-object v4, v0, Lk4/k;->e:Lm4/h;

    .line 477
    iget-wide v5, v1, Lm4/b;->f:J

    .line 479
    iput-wide v5, v4, Lm4/b;->f:J

    .line 481
    iget-wide v5, v1, Lm4/b;->g:J

    .line 483
    iput-wide v5, v4, Lm4/b;->g:J

    .line 485
    iget-wide v5, v1, Lm4/b;->h:J

    .line 487
    iput-wide v5, v4, Lm4/b;->h:J

    .line 489
    iget-boolean v1, v1, Lm4/b;->s:Z

    .line 491
    iput-boolean v1, v4, Lm4/b;->s:Z

    .line 493
    iput-boolean v13, v0, Lk4/k;->g:Z

    .line 495
    goto :goto_1f1

    .line 496
    :cond_1ef
    iput-boolean v12, v0, Lk4/k;->g:Z

    .line 498
    :goto_1f1
    iget-object v1, v0, Lk4/k;->e:Lm4/h;

    .line 500
    new-instance v6, Lk4/j;

    .line 502
    iget-object v4, v0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    .line 504
    invoke-static {v1}, La/b;->B(Lm4/b;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 507
    move-result-object v5

    .line 508
    sget-object v7, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 510
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 513
    move-result v5

    .line 514
    if-eqz v5, :cond_206

    .line 516
    iget-wide v2, v1, Lm4/b;->h:J

    .line 518
    goto :goto_246

    .line 519
    :cond_206
    iget-boolean v5, v1, Lm4/b;->n:Z

    .line 521
    if-eqz v5, :cond_20f

    .line 523
    iget-boolean v5, v0, Lk4/k;->g:Z

    .line 525
    if-nez v5, :cond_20f

    .line 527
    goto :goto_246

    .line 528
    :cond_20f
    iget-wide v2, v1, Lm4/b;->g:J

    .line 530
    iget-boolean v5, v1, Lm4/b;->l:Z

    .line 532
    const/16 v7, 0xc

    .line 534
    if-nez v5, :cond_218

    .line 536
    goto :goto_243

    .line 537
    :cond_218
    iget-object v5, v1, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 539
    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 541
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 544
    move-result v5

    .line 545
    if-eqz v5, :cond_238

    .line 547
    iget-object v5, v1, Lm4/b;->p:Lm4/a;

    .line 549
    if-eqz v5, :cond_230

    .line 551
    iget-object v5, v5, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 553
    if-eqz v5, :cond_230

    .line 555
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    .line 558
    move-result v5

    .line 559
    add-int/2addr v7, v5

    .line 560
    goto :goto_244

    .line 561
    :cond_230
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 563
    const-string v2, "AesExtraDataRecord not found or invalid for Aes encrypted entry"

    .line 565
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 568
    throw v1

    .line 569
    :cond_238
    iget-object v5, v1, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 571
    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 573
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 576
    move-result v5

    .line 577
    if-eqz v5, :cond_243

    .line 579
    goto :goto_244

    .line 580
    :cond_243
    :goto_243
    move v7, v12

    .line 581
    :goto_244
    int-to-long v7, v7

    .line 582
    sub-long/2addr v2, v7

    .line 583
    :goto_246
    invoke-direct {v6, v4, v2, v3}, Lk4/j;-><init>(Ljava/io/PushbackInputStream;J)V

    .line 586
    iget-boolean v2, v1, Lm4/b;->l:Z

    .line 588
    if-nez v2, :cond_259

    .line 590
    new-instance v2, Lk4/e;

    .line 592
    iget-object v3, v0, Lk4/k;->d:[C

    .line 594
    iget-object v4, v0, Lk4/k;->h:Lm4/i;

    .line 596
    iget v4, v4, Lm4/i;->b:I

    .line 598
    invoke-direct {v2, v6, v1, v3, v4}, Lk4/e;-><init>(Lk4/j;Lm4/h;[CI)V

    .line 601
    goto :goto_282

    .line 602
    :cond_259
    iget-object v2, v1, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 604
    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 606
    if-ne v2, v3, :cond_26f

    .line 608
    new-instance v2, Lk4/a;

    .line 610
    iget-object v8, v0, Lk4/k;->d:[C

    .line 612
    iget-object v3, v0, Lk4/k;->h:Lm4/i;

    .line 614
    iget v9, v3, Lm4/i;->b:I

    .line 616
    iget-boolean v10, v3, Lm4/i;->c:Z

    .line 618
    move-object v5, v2

    .line 619
    move-object v7, v1

    .line 620
    invoke-direct/range {v5 .. v10}, Lk4/a;-><init>(Lk4/j;Lm4/h;[CIZ)V

    .line 623
    goto :goto_282

    .line 624
    :cond_26f
    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 626
    if-ne v2, v3, :cond_2a0

    .line 628
    new-instance v2, Lk4/l;

    .line 630
    iget-object v8, v0, Lk4/k;->d:[C

    .line 632
    iget-object v3, v0, Lk4/k;->h:Lm4/i;

    .line 634
    iget v9, v3, Lm4/i;->b:I

    .line 636
    iget-boolean v10, v3, Lm4/i;->c:Z

    .line 638
    move-object v5, v2

    .line 639
    move-object v7, v1

    .line 640
    invoke-direct/range {v5 .. v10}, Lk4/l;-><init>(Lk4/j;Lm4/h;[CIZ)V

    .line 643
    :goto_282
    invoke-static {v1}, La/b;->B(Lm4/b;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 646
    move-result-object v1

    .line 647
    sget-object v3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 649
    if-ne v1, v3, :cond_294

    .line 651
    new-instance v1, Lk4/d;

    .line 653
    iget-object v3, v0, Lk4/k;->h:Lm4/i;

    .line 655
    iget v3, v3, Lm4/i;->b:I

    .line 657
    invoke-direct {v1, v2, v3}, Lk4/d;-><init>(Lk4/b;I)V

    .line 660
    goto :goto_299

    .line 661
    :cond_294
    new-instance v1, Lk4/i;

    .line 663
    invoke-direct {v1, v2}, Lk4/i;-><init>(Lk4/b;)V

    .line 666
    :goto_299
    iput-object v1, v0, Lk4/k;->b:Lk4/c;

    .line 668
    iput-boolean v12, v0, Lk4/k;->j:Z

    .line 670
    iget-object v1, v0, Lk4/k;->e:Lm4/h;

    .line 672
    return-object v1

    .line 673
    :cond_2a0
    new-array v2, v13, [Ljava/lang/Object;

    .line 675
    iget-object v1, v1, Lm4/b;->k:Ljava/lang/String;

    .line 677
    aput-object v1, v2, v12

    .line 679
    const-string v1, "Entry [%s] Strong Encryption not supported"

    .line 681
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 684
    move-result-object v1

    .line 685
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 687
    sget-object v3, Lnet/lingala/zip4j/exception/ZipException$Type;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 689
    invoke-direct {v2, v1, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 692
    throw v2

    .line 693
    :cond_2b4
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 695
    const-string v2, "Invalid entry name in local file header"

    .line 697
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 700
    throw v1

    .line 701
    :cond_2bc
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 703
    const-string v2, "Could not read enough bytes for generalPurposeFlags"

    .line 705
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 708
    throw v1
.end method

.method public final read()I
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lk4/k;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    return v3

    :cond_c
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/k;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 7

    .line 3
    iget-boolean v0, p0, Lk4/k;->i:Z

    if-nez v0, :cond_4f

    if-ltz p3, :cond_47

    const/4 v0, 0x0

    if-nez p3, :cond_a

    return v0

    .line 4
    :cond_a
    iget-object v1, p0, Lk4/k;->e:Lm4/h;

    const/4 v2, -0x1

    if-nez v1, :cond_10

    return v2

    .line 5
    :cond_10
    :try_start_10
    iget-object v1, p0, Lk4/k;->b:Lk4/c;

    invoke-virtual {v1, p1, p2, p3}, Lk4/c;->read([BII)I

    move-result p3

    if-ne p3, v2, :cond_1c

    .line 6
    invoke-virtual {p0}, Lk4/k;->a()V

    goto :goto_21

    .line 7
    :cond_1c
    iget-object v1, p0, Lk4/k;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_22

    :goto_21
    return p3

    :catch_22
    move-exception p1

    .line 8
    iget-object p2, p0, Lk4/k;->e:Lm4/h;

    .line 9
    iget-boolean p3, p2, Lm4/b;->l:Z

    if-eqz p3, :cond_34

    .line 10
    sget-object p3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 11
    iget-object p2, p2, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 12
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    const/4 v0, 0x1

    :cond_34
    if-eqz v0, :cond_46

    .line 13
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {p2, p3, p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p2

    .line 14
    :cond_46
    throw p1

    .line 15
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative read length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
