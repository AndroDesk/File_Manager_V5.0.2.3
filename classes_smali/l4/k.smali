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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLm4/i;Lm4/n;)V
    .registers 11

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, La/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/b;-><init>(I)V

    iput-object v0, p0, Ll4/k;->g:La/b;

    new-instance v0, Lj4/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lj4/a;-><init>(I)V

    iput-object v0, p0, Ll4/k;->h:Lj4/a;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    new-instance v0, Lj4/a;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lj4/a;-><init>(I)V

    iput-object v0, p0, Ll4/k;->j:Lj4/a;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ll4/k;->k:J

    iput-boolean v2, p0, Ll4/k;->n:Z

    iget v0, p3, Lm4/i;->b:I

    const/16 v5, 0x200

    if-lt v0, v5, :cond_72

    new-instance v0, Ll4/d;

    invoke-direct {v0, p1}, Ll4/d;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ll4/k;->a:Ll4/d;

    iput-object p2, p0, Ll4/k;->b:[C

    iput-object p3, p0, Ll4/k;->l:Lm4/i;

    if-nez p4, :cond_40

    new-instance p4, Lm4/n;

    invoke-direct {p4}, Lm4/n;-><init>()V

    :cond_40
    invoke-virtual {v0}, Ll4/d;->e()Z

    move-result p1

    if-eqz p1, :cond_56

    iput-boolean v2, p4, Lm4/n;->f:Z

    invoke-virtual {v0}, Ll4/d;->e()Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, v0, Ll4/d;->a:Ljava/io/OutputStream;

    check-cast p1, Ll4/h;

    iget-wide v3, p1, Ll4/h;->b:J

    :cond_54
    iput-wide v3, p4, Lm4/n;->g:J

    :cond_56
    iput-object p4, p0, Ll4/k;->c:Lm4/n;

    iput-boolean v1, p0, Ll4/k;->m:Z

    iget-object p1, p0, Ll4/k;->a:Ll4/d;

    invoke-virtual {p1}, Ll4/d;->e()Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_71

    :cond_63
    iget-object p1, p0, Ll4/k;->j:Lj4/a;

    iget-object p2, p0, Ll4/k;->a:Ll4/d;

    sget-object p3, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide p3

    long-to-int p3, p3

    invoke-virtual {p1, p3, p2}, Lj4/a;->v(ILjava/io/OutputStream;)V

    :goto_71
    return-void

    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lm4/g;
    .registers 12

    iget-object v0, p0, Ll4/k;->d:Ll4/c;

    invoke-virtual {v0}, Ll4/c;->a()V

    iget-object v0, p0, Ll4/k;->d:Ll4/c;

    iget-object v0, v0, Ll4/c;->a:Ll4/b;

    iget-object v0, v0, Ll4/b;->a:Ll4/j;

    iget-wide v0, v0, Ll4/j;->a:J

    iget-object v2, p0, Ll4/k;->e:Lm4/g;

    iput-wide v0, v2, Lm4/b;->g:J

    iget-object v3, p0, Ll4/k;->f:Lm4/h;

    iput-wide v0, v3, Lm4/b;->g:J

    iget-wide v0, p0, Ll4/k;->k:J

    iput-wide v0, v2, Lm4/b;->h:J

    iput-wide v0, v3, Lm4/b;->h:J

    iget-boolean v0, v2, Lm4/b;->l:Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    iget-object v0, v2, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v3

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    if-nez v0, :cond_32

    move v0, v3

    goto :goto_3c

    :cond_32
    iget-object v0, v2, Lm4/b;->p:Lm4/a;

    iget-object v0, v0, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    sget-object v2, Lnet/lingala/zip4j/model/enums/AesVersion;->ONE:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3c
    if-eqz v0, :cond_52

    iget-object v0, p0, Ll4/k;->e:Lm4/g;

    iget-object v2, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    iput-wide v4, v0, Lm4/b;->f:J

    iget-object v0, p0, Ll4/k;->f:Lm4/h;

    iget-object v2, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    iput-wide v4, v0, Lm4/b;->f:J

    :cond_52
    iget-object v0, p0, Ll4/k;->c:Lm4/n;

    iget-object v0, v0, Lm4/n;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Ll4/k;->f:Lm4/h;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ll4/k;->c:Lm4/n;

    iget-object v0, v0, Lm4/n;->b:Lo1/a;

    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Ll4/k;->e:Lm4/g;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ll4/k;->f:Lm4/h;

    iget-boolean v2, v0, Lm4/b;->n:Z

    if-eqz v2, :cond_f8

    iget-object v2, p0, Ll4/k;->h:Lj4/a;

    iget-object v4, p0, Ll4/k;->a:Ll4/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_f0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_7c
    iget-object v6, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v6, Lj4/a;

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7, v5}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget-object v6, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v6, Lj4/a;

    iget-object v7, v2, Lj4/a;->b:[B

    iget-wide v8, v0, Lm4/b;->f:J

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9, v7}, Lj4/a;->x(J[B)V

    iget-object v6, v2, Lj4/a;->b:[B

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-boolean v6, v0, Lm4/h;->t:Z

    if-eqz v6, :cond_b5

    iget-object v1, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v1, Lj4/a;

    iget-wide v6, v0, Lm4/b;->g:J

    invoke-virtual {v1, v6, v7, v5}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget-object v1, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v1, Lj4/a;

    iget-wide v6, v0, Lm4/b;->h:J

    invoke-virtual {v1, v6, v7, v5}, Lj4/a;->w(JLjava/io/OutputStream;)V

    goto :goto_db

    :cond_b5
    iget-object v6, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v6, Lj4/a;

    iget-object v8, v2, Lj4/a;->b:[B

    iget-wide v9, v0, Lm4/b;->g:J

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10, v8}, Lj4/a;->x(J[B)V

    iget-object v6, v2, Lj4/a;->b:[B

    invoke-virtual {v5, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v6, v2, Lj4/a;->a:Ljava/lang/Object;

    check-cast v6, Lj4/a;

    iget-object v8, v2, Lj4/a;->b:[B

    iget-wide v9, v0, Lm4/b;->h:J

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10, v8}, Lj4/a;->x(J[B)V

    iget-object v0, v2, Lj4/a;->b:[B

    invoke-virtual {v5, v0, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_db
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ll4/d;->write([B)V
    :try_end_e2
    .catchall {:try_start_7c .. :try_end_e2} :catchall_e6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_f8

    :catchall_e6
    move-exception v0

    :try_start_e7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    goto :goto_ef

    :catchall_eb
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ef
    throw v0

    :cond_f0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters is null, cannot write extended local header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f8
    :goto_f8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll4/k;->k:J

    iget-object v0, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Ll4/k;->d:Ll4/c;

    invoke-virtual {v0}, Ll4/c;->close()V

    iput-boolean v3, p0, Ll4/k;->n:Z

    iget-object v0, p0, Ll4/k;->e:Lm4/g;

    return-object v0
.end method

.method public final close()V
    .registers 5

    iget-boolean v0, p0, Ll4/k;->n:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ll4/k;->a()Lm4/g;

    :cond_7
    iget-object v0, p0, Ll4/k;->c:Lm4/n;

    iget-object v0, v0, Lm4/n;->c:Lm4/d;

    iget-object v1, p0, Ll4/k;->a:Ll4/d;

    iget-object v2, v1, Ll4/d;->a:Ljava/io/OutputStream;

    instance-of v3, v2, Ll4/h;

    if-eqz v3, :cond_1a

    check-cast v2, Ll4/h;

    invoke-virtual {v2}, Ll4/h;->getFilePointer()J

    move-result-wide v1

    goto :goto_1c

    :cond_1a
    iget-wide v1, v1, Ll4/d;->b:J

    :goto_1c
    iput-wide v1, v0, Lm4/d;->f:J

    iget-object v0, p0, Ll4/k;->h:Lj4/a;

    iget-object v1, p0, Ll4/k;->c:Lm4/n;

    iget-object v2, p0, Ll4/k;->a:Ll4/d;

    iget-object v3, p0, Ll4/k;->l:Lm4/i;

    iget-object v3, v3, Lm4/i;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1, v2, v3}, Lj4/a;->c(Lm4/n;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iget-object v0, p0, Ll4/k;->a:Ll4/d;

    invoke-virtual {v0}, Ll4/d;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll4/k;->m:Z

    return-void
.end method

.method public final e(Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    goto :goto_17

    :cond_15
    move v2, v4

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v3

    :goto_18
    const-string v5, "fileNameInZip is null or empty"

    if-nez v2, :cond_4bd

    iget-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v6, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    const-wide/16 v7, 0x0

    if-ne v2, v6, :cond_3f

    iget-wide v9, v0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    cmp-long v2, v9, v7

    if-gez v2, :cond_3f

    iget-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    invoke-static {v2}, Lo4/a;->n(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    iget-boolean v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    if-nez v2, :cond_37

    goto :goto_3f

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    :goto_3f
    new-instance v2, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    iget-object v9, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    invoke-static {v9}, Lo4/a;->n(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_54

    iput-boolean v4, v2, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    iput-object v6, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-boolean v4, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    iput-wide v7, v2, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    :cond_54
    iget-wide v9, v0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    cmp-long v0, v9, v7

    if-gtz v0, :cond_67

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-gez v0, :cond_65

    iput-wide v7, v2, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    goto :goto_67

    :cond_65
    iput-wide v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    :cond_67
    :goto_67
    iget-object v0, v1, Ll4/k;->g:La/b;

    iget-object v6, v1, Ll4/k;->a:Ll4/d;

    invoke-virtual {v6}, Ll4/d;->e()Z

    move-result v6

    iget-object v9, v1, Ll4/k;->a:Ll4/d;

    invoke-virtual {v9}, Ll4/d;->a()I

    move-result v9

    iget-object v10, v1, Ll4/k;->l:Lm4/i;

    iget-object v10, v10, Lm4/i;->a:Ljava/nio/charset/Charset;

    iget-object v11, v1, Ll4/k;->j:Lj4/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lm4/g;

    invoke-direct {v0}, Lm4/g;-><init>()V

    sget-object v12, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    iput-object v12, v0, Lm4/m;->a:Ljava/lang/Object;

    const/4 v12, 0x2

    new-array v13, v12, [B

    sget-object v14, Lnet/lingala/zip4j/headers/VersionMadeBy;->SPECIFICATION_VERSION:Lnet/lingala/zip4j/headers/VersionMadeBy;

    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/VersionMadeBy;->getCode()B

    move-result v14

    aput-byte v14, v13, v4

    sget-object v14, Lnet/lingala/zip4j/headers/VersionMadeBy;->UNIX:Lnet/lingala/zip4j/headers/VersionMadeBy;

    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/VersionMadeBy;->getCode()B

    move-result v14

    aput-byte v14, v13, v3

    invoke-static {}, Lo4/a;->m()Z

    move-result v14

    if-eqz v14, :cond_ac

    iget-boolean v14, v2, Lnet/lingala/zip4j/model/ZipParameters;->s:Z

    if-nez v14, :cond_ac

    sget-object v14, Lnet/lingala/zip4j/headers/VersionMadeBy;->WINDOWS:Lnet/lingala/zip4j/headers/VersionMadeBy;

    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/VersionMadeBy;->getCode()B

    move-result v14

    aput-byte v14, v13, v3

    :cond_ac
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v13}, Lj4/a;->o(I[B)I

    move-result v11

    iput v11, v0, Lm4/g;->t:I

    sget-object v11, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->DEFAULT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v14, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v13, v14, :cond_bf

    sget-object v11, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->DEFLATE_COMPRESSED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    :cond_bf
    iget-wide v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    const-wide v7, 0xffffffffL

    cmp-long v12, v12, v7

    if-lez v12, :cond_cc

    sget-object v11, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->ZIP_64_FORMAT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    :cond_cc
    iget-boolean v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    if-eqz v12, :cond_dc

    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v13, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_dc

    sget-object v11, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->AES_ENCRYPTED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    :cond_dc
    invoke-virtual {v11}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->getCode()I

    move-result v11

    iput v11, v0, Lm4/b;->b:I

    iget-boolean v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    if-eqz v11, :cond_126

    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v12, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v11, v12, :cond_126

    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v11, v0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    new-instance v11, Lm4/a;

    invoke-direct {v11}, Lm4/a;-><init>()V

    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    if-eqz v12, :cond_fb

    iput-object v12, v11, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    :cond_fb
    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    sget-object v13, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v12, v13, :cond_104

    iput-object v13, v11, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    goto :goto_111

    :cond_104
    sget-object v13, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v12, v13, :cond_10b

    iput-object v13, v11, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    goto :goto_111

    :cond_10b
    sget-object v13, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v12, v13, :cond_11e

    iput-object v13, v11, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    :goto_111
    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v12, v11, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v11, v0, Lm4/b;->p:Lm4/a;

    iget v11, v0, Lm4/b;->j:I

    add-int/lit8 v11, v11, 0xb

    iput v11, v0, Lm4/b;->j:I

    goto :goto_12a

    :cond_11e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid AES key strength"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_126
    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v11, v0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    :goto_12a
    iget-boolean v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    if-eqz v11, :cond_143

    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-eqz v11, :cond_13b

    sget-object v12, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-eq v11, v12, :cond_13b

    iput-boolean v3, v0, Lm4/b;->l:Z

    iput-object v11, v0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    goto :goto_143

    :cond_13b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_143
    :goto_143
    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    invoke-static {v11}, La/b;->O(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4b7

    iput-object v11, v0, Lm4/b;->k:Ljava/lang/String;

    invoke-static {v11, v10}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    iput v5, v0, Lm4/b;->i:I

    if-eqz v6, :cond_157

    goto :goto_158

    :cond_157
    move v9, v4

    :goto_158
    iput v9, v0, Lm4/g;->u:I

    iget-wide v5, v2, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    invoke-static {v5, v6}, La/b;->x(J)J

    move-result-wide v5

    iput-wide v5, v0, Lm4/b;->e:J

    invoke-static {v11}, Lo4/a;->n(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lm4/b;->s:Z

    const/4 v6, 0x4

    new-array v9, v6, [B

    invoke-static {}, Lo4/a;->l()Z

    move-result v11

    const/16 v12, 0x10

    if-nez v11, :cond_189

    invoke-static {}, Lo4/a;->j()Z

    move-result v11

    if-eqz v11, :cond_17a

    goto :goto_189

    :cond_17a
    invoke-static {}, Lo4/a;->m()Z

    move-result v11

    if-eqz v11, :cond_196

    if-eqz v5, :cond_196

    aget-byte v5, v9, v4

    or-int/2addr v5, v12

    int-to-byte v5, v5

    aput-byte v5, v9, v4

    goto :goto_196

    :cond_189
    :goto_189
    if-eqz v5, :cond_191

    sget-object v5, Lo4/a;->b:[B

    invoke-static {v5, v4, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_196

    :cond_191
    sget-object v5, Lo4/a;->a:[B

    invoke-static {v5, v4, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_196
    :goto_196
    iput-object v9, v0, Lm4/g;->v:[B

    iget-boolean v5, v2, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    if-eqz v5, :cond_1a9

    iget-wide v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    const-wide/16 v17, -0x1

    cmp-long v9, v12, v17

    if-nez v9, :cond_1a9

    const-wide/16 v11, 0x0

    iput-wide v11, v0, Lm4/b;->h:J

    goto :goto_1ad

    :cond_1a9
    iget-wide v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    iput-wide v11, v0, Lm4/b;->h:J

    :goto_1ad
    iget-boolean v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    if-eqz v9, :cond_1bb

    iget-object v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v11, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v9, v11, :cond_1bb

    iget-wide v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    iput-wide v11, v0, Lm4/b;->f:J

    :cond_1bb
    iget-boolean v9, v0, Lm4/b;->l:Z

    const/4 v11, 0x2

    new-array v12, v11, [B

    if-eqz v9, :cond_1c4

    int-to-byte v9, v3

    goto :goto_1c5

    :cond_1c4
    move v9, v4

    :goto_1c5
    iget-object v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21c

    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e1

    invoke-static {v3, v9}, La/b;->f0(IB)B

    move-result v9

    const/4 v11, 0x2

    invoke-static {v11, v9}, La/b;->f0(IB)B

    move-result v9

    goto :goto_21c

    :cond_1e1
    const/4 v11, 0x2

    sget-object v13, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iget-object v15, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f4

    or-int/lit8 v9, v9, 0x2

    int-to-byte v9, v9

    invoke-static {v11, v9}, La/b;->f0(IB)B

    move-result v9

    goto :goto_21c

    :cond_1f4
    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_203

    invoke-static {v3, v9}, La/b;->f0(IB)B

    move-result v9

    goto :goto_21a

    :cond_203
    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_217

    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iget-object v13, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21c

    :cond_217
    or-int/lit8 v9, v9, 0x2

    int-to-byte v9, v9

    :goto_21a
    or-int/2addr v9, v6

    int-to-byte v9, v9

    :cond_21c
    :goto_21c
    iget-boolean v11, v2, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    if-eqz v11, :cond_223

    or-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    :cond_223
    aput-byte v9, v12, v4

    if-eqz v10, :cond_22f

    sget-object v9, Lo4/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_236

    :cond_22f
    aget-byte v9, v12, v3

    or-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v12, v3

    :cond_236
    iput-object v12, v0, Lm4/b;->c:[B

    iget-boolean v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    iput-boolean v9, v0, Lm4/b;->n:Z

    iget-object v9, v2, Lnet/lingala/zip4j/model/ZipParameters;->q:Ljava/lang/String;

    iput-object v9, v0, Lm4/g;->x:Ljava/lang/String;

    iput-object v0, v1, Ll4/k;->e:Lm4/g;

    iget-object v9, v1, Ll4/k;->a:Ll4/d;

    iget-object v10, v9, Ll4/d;->a:Ljava/io/OutputStream;

    instance-of v11, v10, Ll4/h;

    if-eqz v11, :cond_251

    check-cast v10, Ll4/h;

    invoke-virtual {v10}, Ll4/h;->getFilePointer()J

    move-result-wide v9

    goto :goto_253

    :cond_251
    iget-wide v9, v9, Ll4/d;->b:J

    :goto_253
    iput-wide v9, v0, Lm4/g;->w:J

    iget-object v0, v1, Ll4/k;->g:La/b;

    iget-object v9, v1, Ll4/k;->e:Lm4/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lm4/h;

    invoke-direct {v0}, Lm4/h;-><init>()V

    sget-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    iput-object v10, v0, Lm4/m;->a:Ljava/lang/Object;

    iget v10, v9, Lm4/b;->b:I

    iput v10, v0, Lm4/b;->b:I

    iget-object v10, v9, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v10, v0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iget-wide v10, v9, Lm4/b;->e:J

    iput-wide v10, v0, Lm4/b;->e:J

    iget-wide v10, v9, Lm4/b;->h:J

    iput-wide v10, v0, Lm4/b;->h:J

    iget v10, v9, Lm4/b;->i:I

    iput v10, v0, Lm4/b;->i:I

    iget-object v10, v9, Lm4/b;->k:Ljava/lang/String;

    iput-object v10, v0, Lm4/b;->k:Ljava/lang/String;

    iget-boolean v10, v9, Lm4/b;->l:Z

    iput-boolean v10, v0, Lm4/b;->l:Z

    iget-object v10, v9, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v10, v0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iget-object v10, v9, Lm4/b;->p:Lm4/a;

    iput-object v10, v0, Lm4/b;->p:Lm4/a;

    iget-wide v10, v9, Lm4/b;->f:J

    iput-wide v10, v0, Lm4/b;->f:J

    iget-wide v10, v9, Lm4/b;->g:J

    iput-wide v10, v0, Lm4/b;->g:J

    iget-object v10, v9, Lm4/b;->c:[B

    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iput-object v10, v0, Lm4/b;->c:[B

    iget-boolean v10, v9, Lm4/b;->n:Z

    iput-boolean v10, v0, Lm4/b;->n:Z

    iget v9, v9, Lm4/b;->j:I

    iput v9, v0, Lm4/b;->j:I

    iput-object v0, v1, Ll4/k;->f:Lm4/h;

    iget-object v9, v1, Ll4/k;->h:Lj4/a;

    iget-object v10, v1, Ll4/k;->c:Lm4/n;

    iget-object v11, v1, Ll4/k;->a:Ll4/d;

    iget-object v12, v1, Ll4/k;->l:Lm4/i;

    iget-object v12, v12, Lm4/i;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_2b7
    iget-object v15, v9, Lj4/a;->a:Ljava/lang/Object;

    check-cast v15, Lj4/a;

    iget-object v5, v0, Lm4/m;->a:Ljava/lang/Object;

    check-cast v5, Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-virtual {v15, v5, v13}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget-object v5, v9, Lj4/a;->a:Ljava/lang/Object;

    check-cast v5, Lj4/a;

    iget v7, v0, Lm4/b;->b:I

    invoke-virtual {v5, v7, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v5, v0, Lm4/b;->c:[B

    invoke-virtual {v13, v5}, Ljava/io/OutputStream;->write([B)V

    iget-object v5, v9, Lj4/a;->a:Ljava/lang/Object;

    check-cast v5, Lj4/a;

    iget-object v7, v0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v7

    invoke-virtual {v5, v7, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v5, v9, Lj4/a;->a:Ljava/lang/Object;

    check-cast v5, Lj4/a;

    iget-object v7, v9, Lj4/a;->b:[B

    iget-wide v3, v0, Lm4/b;->e:J

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v7}, Lj4/a;->x(J[B)V

    iget-object v3, v9, Lj4/a;->b:[B

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, v9, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget-object v4, v9, Lj4/a;->b:[B

    iget-wide v6, v0, Lm4/b;->f:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7, v4}, Lj4/a;->x(J[B)V

    iget-object v3, v9, Lj4/a;->b:[B

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-wide v3, v0, Lm4/b;->g:J

    const-wide v6, 0xffffffffL

    cmp-long v16, v3, v6

    if-gez v16, :cond_321

    move-object/from16 v18, v9

    iget-wide v8, v0, Lm4/b;->h:J

    cmp-long v8, v8, v6

    if-ltz v8, :cond_31f

    goto :goto_323

    :cond_31f
    const/4 v6, 0x0

    goto :goto_324

    :cond_321
    move-object/from16 v18, v9

    :goto_323
    const/4 v6, 0x1

    :goto_324
    if-eqz v6, :cond_34c

    move-object/from16 v7, v18

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget-object v4, v7, Lj4/a;->b:[B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v8, 0xffffffffL

    invoke-static {v8, v9, v4}, Lj4/a;->x(J[B)V

    iget-object v3, v7, Lj4/a;->b:[B

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, v7, Lj4/a;->b:[B

    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v3, 0x1

    iput-boolean v3, v10, Lm4/n;->i:Z

    iput-boolean v3, v0, Lm4/h;->t:Z

    const/4 v5, 0x0

    goto :goto_378

    :cond_34c
    move-object/from16 v7, v18

    iget-object v9, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v9, Lj4/a;

    iget-object v10, v7, Lj4/a;->b:[B

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v10}, Lj4/a;->x(J[B)V

    iget-object v3, v7, Lj4/a;->b:[B

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget-object v4, v7, Lj4/a;->b:[B

    iget-wide v9, v0, Lm4/b;->h:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10, v4}, Lj4/a;->x(J[B)V

    iget-object v3, v7, Lj4/a;->b:[B

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iput-boolean v5, v0, Lm4/h;->t:Z

    :goto_378
    new-array v3, v5, [B

    iget-object v4, v0, Lm4/b;->k:Ljava/lang/String;

    invoke-static {v4}, La/b;->O(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_388

    iget-object v3, v0, Lm4/b;->k:Ljava/lang/String;

    invoke-static {v3, v12}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v3

    :cond_388
    iget-object v4, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v4, Lj4/a;

    array-length v5, v3

    invoke-virtual {v4, v5, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    if-eqz v6, :cond_395

    const/16 v4, 0x14

    goto :goto_396

    :cond_395
    const/4 v4, 0x0

    :goto_396
    iget-object v5, v0, Lm4/b;->p:Lm4/a;

    if-eqz v5, :cond_39c

    add-int/lit8 v4, v4, 0xb

    :cond_39c
    iget-object v5, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v5, Lj4/a;

    invoke-virtual {v5, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    array-length v4, v3

    if-lez v4, :cond_3a9

    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_3a9
    if-eqz v6, :cond_3d4

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget-wide v4, v0, Lm4/b;->h:J

    invoke-virtual {v3, v4, v5, v13}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget-wide v4, v0, Lm4/b;->g:J

    invoke-virtual {v3, v4, v5, v13}, Lj4/a;->w(JLjava/io/OutputStream;)V

    :cond_3d4
    iget-object v0, v0, Lm4/b;->p:Lm4/a;

    if-eqz v0, :cond_424

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget-object v4, v0, Lm4/m;->a:Ljava/lang/Object;

    check-cast v4, Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget v4, v0, Lm4/a;->b:I

    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget-object v4, v0, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/enums/AesVersion;->getVersionNumber()I

    move-result v4

    invoke-virtual {v3, v4, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v3, v0, Lm4/a;->d:Ljava/lang/String;

    invoke-static {v3, v12}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x1

    new-array v3, v3, [B

    iget-object v4, v0, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, v7, Lj4/a;->a:Ljava/lang/Object;

    check-cast v3, Lj4/a;

    iget-object v0, v0, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v0

    invoke-virtual {v3, v0, v13}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    :cond_424
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ll4/d;->write([B)V
    :try_end_42b
    .catchall {:try_start_2b7 .. :try_end_42b} :catchall_4ab

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v0, Ll4/j;

    iget-object v3, v1, Ll4/k;->a:Ll4/d;

    invoke-direct {v0, v3}, Ll4/j;-><init>(Ll4/d;)V

    iget-boolean v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    if-nez v3, :cond_43f

    new-instance v3, Ll4/f;

    invoke-direct {v3, v0, v2}, Ll4/f;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;)V

    goto :goto_465

    :cond_43f
    iget-object v3, v1, Ll4/k;->b:[C

    if-eqz v3, :cond_4a3

    array-length v4, v3

    if-eqz v4, :cond_4a3

    iget-object v4, v2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v5, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v4, v5, :cond_457

    new-instance v4, Ll4/a;

    iget-object v5, v1, Ll4/k;->l:Lm4/i;

    iget-boolean v5, v5, Lm4/i;->c:Z

    invoke-direct {v4, v0, v2, v3, v5}, Ll4/a;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    :goto_455
    move-object v3, v4

    goto :goto_465

    :cond_457
    sget-object v5, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v4, v5, :cond_480

    new-instance v4, Ll4/l;

    iget-object v5, v1, Ll4/k;->l:Lm4/i;

    iget-boolean v5, v5, Lm4/i;->c:Z

    invoke-direct {v4, v0, v2, v3, v5}, Ll4/l;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    goto :goto_455

    :goto_465
    iget-object v0, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v14, :cond_475

    new-instance v0, Ll4/e;

    iget-object v2, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iget-object v4, v1, Ll4/k;->l:Lm4/i;

    iget v4, v4, Lm4/i;->b:I

    invoke-direct {v0, v3, v2, v4}, Ll4/e;-><init>(Ll4/b;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V

    goto :goto_47a

    :cond_475
    new-instance v0, Ll4/i;

    invoke-direct {v0, v3}, Ll4/i;-><init>(Ll4/b;)V

    :goto_47a
    iput-object v0, v1, Ll4/k;->d:Ll4/c;

    const/4 v0, 0x0

    iput-boolean v0, v1, Ll4/k;->n:Z

    return-void

    :cond_480
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v4, v0, :cond_49b

    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " encryption method is not supported"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_49b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Invalid encryption method"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "password not set"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4ab
    move-exception v0

    move-object v2, v0

    :try_start_4ad
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b0
    .catchall {:try_start_4ad .. :try_end_4b0} :catchall_4b1

    goto :goto_4b6

    :catchall_4b1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b6
    throw v2

    :cond_4b7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Ll4/k;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/k;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 6

    iget-boolean v0, p0, Ll4/k;->m:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Ll4/k;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object v0, p0, Ll4/k;->d:Ll4/c;

    invoke-virtual {v0, p1, p2, p3}, Ll4/c;->write([BII)V

    iget-wide p1, p0, Ll4/k;->k:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ll4/k;->k:J

    return-void

    :cond_15
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
