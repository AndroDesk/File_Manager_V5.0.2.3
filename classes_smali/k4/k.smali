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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk4/h;[CLm4/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lj4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj4/a;-><init>(I)V

    iput-object v0, p0, Lk4/k;->c:Lj4/a;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lk4/k;->f:Ljava/util/zip/CRC32;

    iput-boolean v1, p0, Lk4/k;->g:Z

    iput-boolean v1, p0, Lk4/k;->i:Z

    iput-boolean v1, p0, Lk4/k;->j:Z

    iget v0, p3, Lm4/i;->b:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_2c

    new-instance v0, Ljava/io/PushbackInputStream;

    iget v1, p3, Lm4/i;->b:I

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    iput-object p2, p0, Lk4/k;->d:[C

    iput-object p3, p0, Lk4/k;->h:Lm4/i;

    return-void

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .registers 11

    iget-object v0, p0, Lk4/k;->b:Lk4/c;

    iget-object v1, p0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lk4/c;->e(Ljava/io/PushbackInputStream;)I

    move-result v0

    iget-object v1, p0, Lk4/k;->b:Lk4/c;

    iget-object v2, p0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v2, v0}, Lk4/c;->a(Ljava/io/PushbackInputStream;I)V

    iget-object v0, p0, Lk4/k;->e:Lm4/h;

    iget-boolean v1, v0, Lm4/b;->n:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b0

    iget-boolean v1, p0, Lk4/k;->g:Z

    if-eqz v1, :cond_1d

    goto/16 :goto_b0

    :cond_1d
    iget-object v1, p0, Lk4/k;->c:Lj4/a;

    iget-object v4, p0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    iget-object v0, v0, Lm4/b;->r:Ljava/util/List;

    if-nez v0, :cond_26

    goto :goto_44

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm4/f;

    iget-wide v5, v5, Lm4/f;->b:J

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2a

    move v0, v2

    goto :goto_45

    :cond_44
    :goto_44
    move v0, v3

    :goto_45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    new-array v5, v5, [B

    invoke-static {v4, v5}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    iget-object v6, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v6, Lj4/a;

    invoke-virtual {v6, v3, v5}, Lj4/a;->m(I[B)J

    move-result-wide v6

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_6b

    invoke-static {v4, v5}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    iget-object v6, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v6, Lj4/a;

    invoke-virtual {v6, v3, v5}, Lj4/a;->m(I[B)J

    move-result-wide v6

    :cond_6b
    if-eqz v0, :cond_96

    iget-object v0, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, Lj4/a;

    iget-object v5, v0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v5, [B

    array-length v8, v5

    invoke-static {v4, v5, v8}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    iget-object v5, v0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v0, v3, v5}, Lj4/a;->m(I[B)J

    move-result-wide v8

    iget-object v0, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, Lj4/a;

    iget-object v1, v0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v1, [B

    array-length v5, v1

    invoke-static {v4, v1, v5}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    iget-object v1, v0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v0, v3, v1}, Lj4/a;->m(I[B)J

    move-result-wide v0

    goto :goto_a8

    :cond_96
    iget-object v0, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, Lj4/a;

    invoke-virtual {v0, v4}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    move-result v0

    int-to-long v8, v0

    iget-object v0, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, Lj4/a;

    invoke-virtual {v0, v4}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    move-result v0

    int-to-long v0, v0

    :goto_a8
    iget-object v4, p0, Lk4/k;->e:Lm4/h;

    iput-wide v8, v4, Lm4/b;->g:J

    iput-wide v0, v4, Lm4/b;->h:J

    iput-wide v6, v4, Lm4/b;->f:J

    :cond_b0
    :goto_b0
    iget-object v0, p0, Lk4/k;->e:Lm4/h;

    iget-object v1, v0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v1, v4, :cond_c5

    iget-object v0, v0, Lm4/b;->p:Lm4/a;

    iget-object v0, v0, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    goto :goto_102

    :cond_c5
    iget-object v0, p0, Lk4/k;->e:Lm4/h;

    iget-wide v0, v0, Lm4/b;->f:J

    iget-object v4, p0, Lk4/k;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_102

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

    iget-object v1, p0, Lk4/k;->e:Lm4/h;

    iget-boolean v4, v1, Lm4/b;->l:Z

    if-eqz v4, :cond_e6

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iget-object v1, v1, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    goto :goto_e7

    :cond_e6
    move v2, v3

    :goto_e7
    if-eqz v2, :cond_eb

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    :cond_eb
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Reached end of entry, but crc verification failed for "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lk4/k;->e:Lm4/h;

    iget-object v3, v3, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1

    :cond_102
    :goto_102
    const/4 v0, 0x0

    iput-object v0, p0, Lk4/k;->e:Lm4/h;

    iget-object v0, p0, Lk4/k;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iput-boolean v2, p0, Lk4/k;->j:Z

    return-void
.end method

.method public final available()I
    .registers 3

    iget-boolean v0, p0, Lk4/k;->i:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lk4/k;->j:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lk4/k;->i:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lk4/k;->b:Lk4/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lk4/c;->close()V

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk4/k;->i:Z

    return-void
.end method

.method public final e(Lm4/g;)Lm4/h;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lk4/k;->c:Lj4/a;

    iget-object v3, v0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    iget-object v4, v0, Lk4/k;->h:Lm4/i;

    iget-object v4, v4, Lm4/i;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lm4/h;

    invoke-direct {v5}, Lm4/h;-><init>()V

    const/4 v6, 0x4

    new-array v7, v6, [B

    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, Lj4/a;

    invoke-virtual {v8, v3}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    move-result v8

    int-to-long v9, v8

    sget-object v11, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v11}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_32

    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, Lj4/a;

    invoke-virtual {v8, v3}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    move-result v8

    :cond_32
    int-to-long v8, v8

    sget-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v10}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v11

    cmp-long v8, v8, v11

    const-string v9, "\\"

    const-string v11, "/"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v8, :cond_48

    const/4 v5, 0x0

    const-wide/16 v2, -0x1

    goto/16 :goto_194

    :cond_48
    iput-object v10, v5, Lm4/m;->a:Ljava/lang/Object;

    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, Lj4/a;

    invoke-virtual {v8, v3}, Lj4/a;->p(Ljava/io/PushbackInputStream;)I

    move-result v8

    iput v8, v5, Lm4/b;->b:I

    const/4 v8, 0x2

    new-array v10, v8, [B

    invoke-static {v3, v10}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    move-result v14

    if-ne v14, v8, :cond_2bc

    aget-byte v8, v10, v12

    invoke-static {v12, v8}, La/b;->J(IB)Z

    move-result v8

    iput-boolean v8, v5, Lm4/b;->l:Z

    aget-byte v8, v10, v12

    const/4 v14, 0x3

    invoke-static {v14, v8}, La/b;->J(IB)Z

    move-result v8

    iput-boolean v8, v5, Lm4/b;->n:Z

    aget-byte v8, v10, v13

    invoke-static {v14, v8}, La/b;->J(IB)Z

    move-result v8

    iput-boolean v8, v5, Lm4/b;->q:Z

    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, v5, Lm4/b;->c:[B

    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, Lj4/a;

    invoke-virtual {v8, v3}, Lj4/a;->p(Ljava/io/PushbackInputStream;)I

    move-result v8

    invoke-static {v8}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v8

    iput-object v8, v5, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, Lj4/a;

    invoke-virtual {v8, v3}, Lj4/a;->j(Ljava/io/PushbackInputStream;)I

    move-result v8

    int-to-long v14, v8

    iput-wide v14, v5, Lm4/b;->e:J

    invoke-static {v3, v7}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, Lj4/a;

    invoke-virtual {v8, v12, v7}, Lj4/a;->m(I[B)J

    move-result-wide v7

    iput-wide v7, v5, Lm4/b;->f:J

    iget-object v7, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v7, Lj4/a;

    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([BB)V

    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-static {v3, v8, v6}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v7, v12, v8}, Lj4/a;->m(I[B)J

    move-result-wide v7

    iput-wide v7, v5, Lm4/b;->g:J

    iget-object v7, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v7, Lj4/a;

    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([BB)V

    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-static {v3, v8, v6}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    iget-object v8, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v7, v12, v8}, Lj4/a;->m(I[B)J

    move-result-wide v7

    iput-wide v7, v5, Lm4/b;->h:J

    iget-object v7, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v7, Lj4/a;

    invoke-virtual {v7, v3}, Lj4/a;->p(Ljava/io/PushbackInputStream;)I

    move-result v7

    iput v7, v5, Lm4/b;->i:I

    iget-object v8, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, Lj4/a;

    invoke-virtual {v8, v3}, Lj4/a;->p(Ljava/io/PushbackInputStream;)I

    move-result v8

    iput v8, v5, Lm4/b;->j:I

    if-lez v7, :cond_2b4

    new-array v7, v7, [B

    invoke-static {v3, v7}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    iget-boolean v8, v5, Lm4/b;->q:Z

    invoke-static {v7, v8, v4}, La/b;->t([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10e

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10c

    goto :goto_10e

    :cond_10c
    move v4, v12

    goto :goto_10f

    :cond_10e
    :goto_10e
    move v4, v13

    :goto_10f
    iput-boolean v4, v5, Lm4/b;->s:Z

    iget v4, v5, Lm4/b;->j:I

    if-gtz v4, :cond_116

    goto :goto_130

    :cond_116
    if-ge v4, v6, :cond_120

    if-lez v4, :cond_11e

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/io/InputStream;->skip(J)J

    :cond_11e
    const/4 v3, 0x0

    goto :goto_12e

    :cond_120
    new-array v6, v4, [B

    invoke-static {v3, v6}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    :try_start_125
    invoke-virtual {v2, v4, v6}, Lj4/a;->d(I[B)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_129} :catch_12a

    goto :goto_12e

    :catch_12a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_12e
    iput-object v3, v5, Lm4/b;->r:Ljava/util/List;

    :goto_130
    iget-object v3, v2, Lj4/a;->a:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Lj4/a;

    iget-object v3, v5, Lm4/b;->r:Ljava/util/List;

    if-eqz v3, :cond_16a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_140

    goto :goto_16a

    :cond_140
    iget-object v14, v5, Lm4/b;->r:Ljava/util/List;

    iget-wide v3, v5, Lm4/b;->h:J

    iget-wide v6, v5, Lm4/b;->g:J

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-wide/from16 v16, v3

    move-wide/from16 v18, v6

    invoke-static/range {v14 .. v22}, Lj4/a;->r(Ljava/util/List;Lj4/a;JJJI)Lm4/l;

    move-result-object v3

    if-nez v3, :cond_155

    goto :goto_16a

    :cond_155
    iput-object v3, v5, Lm4/b;->o:Lm4/l;

    iget-wide v6, v3, Lm4/l;->c:J

    const-wide/16 v14, -0x1

    cmp-long v4, v6, v14

    if-eqz v4, :cond_161

    iput-wide v6, v5, Lm4/b;->h:J

    :cond_161
    iget-wide v3, v3, Lm4/l;->b:J

    cmp-long v6, v3, v14

    if-eqz v6, :cond_16d

    iput-wide v3, v5, Lm4/b;->g:J

    goto :goto_16d

    :cond_16a
    :goto_16a
    const-wide/16 v3, -0x1

    move-wide v14, v3

    :cond_16d
    :goto_16d
    iget-object v2, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v2, Lj4/a;

    invoke-static {v5, v2}, Lj4/a;->f(Lm4/b;Lj4/a;)V

    iget-boolean v2, v5, Lm4/b;->l:Z

    if-eqz v2, :cond_193

    iget-object v2, v5, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v2, v3, :cond_17f

    goto :goto_193

    :cond_17f
    iget-object v2, v5, Lm4/b;->c:[B

    aget-byte v2, v2, v12

    const/4 v3, 0x6

    invoke-static {v3, v2}, La/b;->J(IB)Z

    move-result v2

    if-eqz v2, :cond_18f

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v2, v5, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    goto :goto_193

    :cond_18f
    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v2, v5, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    :cond_193
    :goto_193
    move-wide v2, v14

    :goto_194
    iput-object v5, v0, Lk4/k;->e:Lm4/h;

    if-nez v5, :cond_19a

    const/4 v1, 0x0

    return-object v1

    :cond_19a
    iget-boolean v4, v5, Lm4/b;->l:Z

    iget-object v4, v5, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1ad

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ab

    goto :goto_1ad

    :cond_1ab
    move v4, v12

    goto :goto_1ae

    :cond_1ad
    :goto_1ad
    move v4, v13

    :goto_1ae
    if-nez v4, :cond_1d3

    iget-object v4, v5, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v6, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v4, v6, :cond_1d3

    iget-wide v6, v5, Lm4/b;->h:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_1bf

    goto :goto_1d3

    :cond_1bf
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid local file header for: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lm4/b;->k:Ljava/lang/String;

    const-string v4, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d3
    :goto_1d3
    iget-object v4, v0, Lk4/k;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    if-eqz v1, :cond_1ef

    iget-object v4, v0, Lk4/k;->e:Lm4/h;

    iget-wide v5, v1, Lm4/b;->f:J

    iput-wide v5, v4, Lm4/b;->f:J

    iget-wide v5, v1, Lm4/b;->g:J

    iput-wide v5, v4, Lm4/b;->g:J

    iget-wide v5, v1, Lm4/b;->h:J

    iput-wide v5, v4, Lm4/b;->h:J

    iget-boolean v1, v1, Lm4/b;->s:Z

    iput-boolean v1, v4, Lm4/b;->s:Z

    iput-boolean v13, v0, Lk4/k;->g:Z

    goto :goto_1f1

    :cond_1ef
    iput-boolean v12, v0, Lk4/k;->g:Z

    :goto_1f1
    iget-object v1, v0, Lk4/k;->e:Lm4/h;

    new-instance v6, Lk4/j;

    iget-object v4, v0, Lk4/k;->a:Ljava/io/PushbackInputStream;

    invoke-static {v1}, La/b;->B(Lm4/b;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v5

    sget-object v7, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_206

    iget-wide v2, v1, Lm4/b;->h:J

    goto :goto_246

    :cond_206
    iget-boolean v5, v1, Lm4/b;->n:Z

    if-eqz v5, :cond_20f

    iget-boolean v5, v0, Lk4/k;->g:Z

    if-nez v5, :cond_20f

    goto :goto_246

    :cond_20f
    iget-wide v2, v1, Lm4/b;->g:J

    iget-boolean v5, v1, Lm4/b;->l:Z

    const/16 v7, 0xc

    if-nez v5, :cond_218

    goto :goto_243

    :cond_218
    iget-object v5, v1, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_238

    iget-object v5, v1, Lm4/b;->p:Lm4/a;

    if-eqz v5, :cond_230

    iget-object v5, v5, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-eqz v5, :cond_230

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v5

    add-int/2addr v7, v5

    goto :goto_244

    :cond_230
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "AesExtraDataRecord not found or invalid for Aes encrypted entry"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_238
    iget-object v5, v1, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_243

    goto :goto_244

    :cond_243
    :goto_243
    move v7, v12

    :goto_244
    int-to-long v7, v7

    sub-long/2addr v2, v7

    :goto_246
    invoke-direct {v6, v4, v2, v3}, Lk4/j;-><init>(Ljava/io/PushbackInputStream;J)V

    iget-boolean v2, v1, Lm4/b;->l:Z

    if-nez v2, :cond_259

    new-instance v2, Lk4/e;

    iget-object v3, v0, Lk4/k;->d:[C

    iget-object v4, v0, Lk4/k;->h:Lm4/i;

    iget v4, v4, Lm4/i;->b:I

    invoke-direct {v2, v6, v1, v3, v4}, Lk4/e;-><init>(Lk4/j;Lm4/h;[CI)V

    goto :goto_282

    :cond_259
    iget-object v2, v1, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v2, v3, :cond_26f

    new-instance v2, Lk4/a;

    iget-object v8, v0, Lk4/k;->d:[C

    iget-object v3, v0, Lk4/k;->h:Lm4/i;

    iget v9, v3, Lm4/i;->b:I

    iget-boolean v10, v3, Lm4/i;->c:Z

    move-object v5, v2

    move-object v7, v1

    invoke-direct/range {v5 .. v10}, Lk4/a;-><init>(Lk4/j;Lm4/h;[CIZ)V

    goto :goto_282

    :cond_26f
    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v2, v3, :cond_2a0

    new-instance v2, Lk4/l;

    iget-object v8, v0, Lk4/k;->d:[C

    iget-object v3, v0, Lk4/k;->h:Lm4/i;

    iget v9, v3, Lm4/i;->b:I

    iget-boolean v10, v3, Lm4/i;->c:Z

    move-object v5, v2

    move-object v7, v1

    invoke-direct/range {v5 .. v10}, Lk4/l;-><init>(Lk4/j;Lm4/h;[CIZ)V

    :goto_282
    invoke-static {v1}, La/b;->B(Lm4/b;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v1

    sget-object v3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v1, v3, :cond_294

    new-instance v1, Lk4/d;

    iget-object v3, v0, Lk4/k;->h:Lm4/i;

    iget v3, v3, Lm4/i;->b:I

    invoke-direct {v1, v2, v3}, Lk4/d;-><init>(Lk4/b;I)V

    goto :goto_299

    :cond_294
    new-instance v1, Lk4/i;

    invoke-direct {v1, v2}, Lk4/i;-><init>(Lk4/b;)V

    :goto_299
    iput-object v1, v0, Lk4/k;->b:Lk4/c;

    iput-boolean v12, v0, Lk4/k;->j:Z

    iget-object v1, v0, Lk4/k;->e:Lm4/h;

    return-object v1

    :cond_2a0
    new-array v2, v13, [Ljava/lang/Object;

    iget-object v1, v1, Lm4/b;->k:Ljava/lang/String;

    aput-object v1, v2, v12

    const-string v1, "Entry [%s] Strong Encryption not supported"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    sget-object v3, Lnet/lingala/zip4j/exception/ZipException$Type;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v2, v1, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v2

    :cond_2b4
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Invalid entry name in local file header"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2bc
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Could not read enough bytes for generalPurposeFlags"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final read()I
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

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

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/k;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 7

    iget-boolean v0, p0, Lk4/k;->i:Z

    if-nez v0, :cond_4f

    if-ltz p3, :cond_47

    const/4 v0, 0x0

    if-nez p3, :cond_a

    return v0

    :cond_a
    iget-object v1, p0, Lk4/k;->e:Lm4/h;

    const/4 v2, -0x1

    if-nez v1, :cond_10

    return v2

    :cond_10
    :try_start_10
    iget-object v1, p0, Lk4/k;->b:Lk4/c;

    invoke-virtual {v1, p1, p2, p3}, Lk4/c;->read([BII)I

    move-result p3

    if-ne p3, v2, :cond_1c

    invoke-virtual {p0}, Lk4/k;->a()V

    goto :goto_21

    :cond_1c
    iget-object v1, p0, Lk4/k;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_22

    :goto_21
    return p3

    :catch_22
    move-exception p1

    iget-object p2, p0, Lk4/k;->e:Lm4/h;

    iget-boolean p3, p2, Lm4/b;->l:Z

    if-eqz p3, :cond_34

    sget-object p3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iget-object p2, p2, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    const/4 v0, 0x1

    :cond_34
    if-eqz v0, :cond_46

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {p2, p3, p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p2

    :cond_46
    throw p1

    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative read length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
