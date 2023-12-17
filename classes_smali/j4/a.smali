.class public final Lj4/a;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:[B

.field public c:Ljava/lang/Cloneable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p1, v0, :cond_28

    if-eq p1, v3, :cond_18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lj4/a;

    invoke-direct {p1, v3}, Lj4/a;-><init>(I)V

    iput-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    new-array p1, v2, [B

    iput-object p1, p0, Lj4/a;->b:[B

    return-void

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, v3, [B

    iput-object p1, p0, Lj4/a;->b:[B

    new-array p1, v2, [B

    iput-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    new-array p1, v1, [B

    iput-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    return-void

    :cond_28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lj4/a;

    invoke-direct {p1, v3}, Lj4/a;-><init>(I)V

    iput-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    new-array p1, v1, [B

    iput-object p1, p0, Lj4/a;->b:[B

    new-array p1, v2, [B

    iput-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    return-void
.end method

.method public static A(Lm4/k;Ljava/io/ByteArrayOutputStream;Lj4/a;)V
    .registers 5

    iget-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    check-cast v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p2, v0, p1}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lm4/k;->b:J

    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget v0, p0, Lm4/k;->c:I

    invoke-virtual {p2, v0, p1}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget v0, p0, Lm4/k;->d:I

    invoke-virtual {p2, v0, p1}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget v0, p0, Lm4/k;->e:I

    invoke-virtual {p2, v0, p1}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget v0, p0, Lm4/k;->f:I

    invoke-virtual {p2, v0, p1}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lm4/k;->g:J

    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget-wide v0, p0, Lm4/k;->h:J

    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget-wide v0, p0, Lm4/k;->i:J

    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget-wide v0, p0, Lm4/k;->j:J

    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    return-void
.end method

.method public static a(Lm4/n;IJ)Lm4/k;
    .registers 9

    new-instance v0, Lm4/k;

    invoke-direct {v0}, Lm4/k;-><init>()V

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    iput-object v1, v0, Lm4/m;->a:Ljava/lang/Object;

    const-wide/16 v1, 0x2c

    iput-wide v1, v0, Lm4/k;->b:J

    iget-object v1, p0, Lm4/n;->b:Lo1/a;

    if-eqz v1, :cond_32

    iget-object v1, v1, Lo1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_32

    iget-object v1, p0, Lm4/n;->b:Lo1/a;

    iget-object v1, v1, Lo1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/g;

    iget v2, v1, Lm4/g;->t:I

    iput v2, v0, Lm4/k;->c:I

    iget v1, v1, Lm4/b;->b:I

    iput v1, v0, Lm4/k;->d:I

    :cond_32
    iget-object v1, p0, Lm4/n;->c:Lm4/d;

    iget v2, v1, Lm4/d;->b:I

    iput v2, v0, Lm4/k;->e:I

    iget v1, v1, Lm4/d;->c:I

    iput v1, v0, Lm4/k;->f:I

    iget-object v1, p0, Lm4/n;->b:Lo1/a;

    iget-object v1, v1, Lo1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    iget-boolean v3, p0, Lm4/n;->f:Z

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lm4/n;->b:Lo1/a;

    iget-object v3, v3, Lo1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object p0, p0, Lm4/n;->c:Lm4/d;

    iget p0, p0, Lm4/d;->b:I

    invoke-static {v3, p0}, Lj4/a;->b(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_5b

    :cond_5a
    move-wide v3, v1

    :goto_5b
    iput-wide v3, v0, Lm4/k;->g:J

    iput-wide v1, v0, Lm4/k;->h:J

    int-to-long p0, p1

    iput-wide p0, v0, Lm4/k;->i:J

    iput-wide p2, v0, Lm4/k;->j:J

    return-object v0
.end method

.method public static b(Ljava/util/List;I)J
    .registers 4

    if-eqz p0, :cond_1c

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/g;

    iget v1, v1, Lm4/g;->u:I

    if-ne v1, p1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    int-to-long p0, v0

    return-wide p0

    :cond_1c
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lm4/n;Ljava/io/OutputStream;)V
    .registers 5

    instance-of v0, p1, Ll4/g;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lm4/n;->c:Lm4/d;

    check-cast p1, Ll4/g;

    invoke-interface {p1}, Ll4/g;->getFilePointer()J

    move-result-wide v1

    iput-wide v1, v0, Lm4/d;->f:J

    invoke-interface {p1}, Ll4/g;->a()I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iget-boolean v0, p0, Lm4/n;->i:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lm4/n;->e:Lm4/k;

    if-nez v0, :cond_23

    new-instance v0, Lm4/k;

    invoke-direct {v0}, Lm4/k;-><init>()V

    iput-object v0, p0, Lm4/n;->e:Lm4/k;

    :cond_23
    iget-object v0, p0, Lm4/n;->d:Lm4/j;

    if-nez v0, :cond_2e

    new-instance v0, Lm4/j;

    invoke-direct {v0}, Lm4/j;-><init>()V

    iput-object v0, p0, Lm4/n;->d:Lm4/j;

    :cond_2e
    iget-object v0, p0, Lm4/n;->e:Lm4/k;

    iget-object v1, p0, Lm4/n;->c:Lm4/d;

    iget-wide v1, v1, Lm4/d;->f:J

    iput-wide v1, v0, Lm4/k;->j:J

    iget-object v0, p0, Lm4/n;->d:Lm4/j;

    iput p1, v0, Lm4/j;->b:I

    add-int/lit8 v1, p1, 0x1

    iput v1, v0, Lm4/j;->d:I

    :cond_3e
    iget-object p0, p0, Lm4/n;->c:Lm4/d;

    iput p1, p0, Lm4/d;->b:I

    iput p1, p0, Lm4/d;->c:I

    return-void
.end method

.method public static f(Lm4/b;Lj4/a;)V
    .registers 10

    iget-object v0, p0, Lm4/b;->r:Ljava/util/List;

    if-eqz v0, :cond_88

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    goto/16 :goto_88

    :cond_c
    iget-object v0, p0, Lm4/b;->r:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    goto :goto_80

    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm4/f;

    if-nez v2, :cond_25

    goto :goto_16

    :cond_25
    iget-wide v3, v2, Lm4/f;->b:J

    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-nez v3, :cond_16

    iget-object v0, v2, Lm4/f;->d:[B

    if-eqz v0, :cond_78

    array-length v0, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_78

    new-instance v1, Lm4/a;

    invoke-direct {v1}, Lm4/a;-><init>()V

    iput-object v5, v1, Lm4/m;->a:Ljava/lang/Object;

    iget v0, v2, Lm4/f;->c:I

    iput v0, v1, Lm4/a;->b:I

    iget-object v0, v2, Lm4/f;->d:[B

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lj4/a;->o(I[B)I

    move-result p1

    invoke-static {p1}, Lnet/lingala/zip4j/model/enums/AesVersion;->getFromVersionNumber(I)Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object p1

    iput-object p1, v1, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    const/4 p1, 0x2

    new-array v3, p1, [B

    invoke-static {v0, p1, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object p1, v1, Lm4/a;->d:Ljava/lang/String;

    const/4 p1, 0x4

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object p1

    iput-object p1, v1, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const/4 p1, 0x5

    invoke-static {p1, v0}, Lj4/a;->o(I[B)I

    move-result p1

    invoke-static {p1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p1

    iput-object p1, v1, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    goto :goto_80

    :cond_78
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "corrupt AES extra data records"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_80
    :goto_80
    if-eqz v1, :cond_88

    iput-object v1, p0, Lm4/b;->p:Lm4/a;

    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object p1, p0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    :cond_88
    :goto_88
    return-void
.end method

.method public static i(Ljava/io/PushbackInputStream;[BI)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, La/b;->V(Ljava/io/InputStream;[BII)I

    move-result p0

    if-ne p0, p2, :cond_8

    return-void

    :cond_8
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "Could not fill buffer"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static o(I[B)I
    .registers 3

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static r(Ljava/util/List;Lj4/a;JJJI)Lm4/l;
    .registers 15

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm4/f;

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    iget-wide v4, v0, Lm4/f;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    new-instance p0, Lm4/l;

    invoke-direct {p0}, Lm4/l;-><init>()V

    iget-object v2, v0, Lm4/f;->d:[B

    iget v3, v0, Lm4/f;->c:I

    if-gtz v3, :cond_2c

    return-object v1

    :cond_2c
    const/4 v1, 0x0

    const-wide v4, 0xffffffffL

    if-lez v3, :cond_40

    cmp-long p2, p2, v4

    if-nez p2, :cond_40

    invoke-virtual {p1, v1, v2}, Lj4/a;->m(I[B)J

    move-result-wide p2

    iput-wide p2, p0, Lm4/l;->c:J

    const/16 v1, 0x8

    :cond_40
    iget p2, v0, Lm4/f;->c:I

    if-ge v1, p2, :cond_50

    cmp-long p2, p4, v4

    if-nez p2, :cond_50

    invoke-virtual {p1, v1, v2}, Lj4/a;->m(I[B)J

    move-result-wide p2

    iput-wide p2, p0, Lm4/l;->b:J

    add-int/lit8 v1, v1, 0x8

    :cond_50
    iget p2, v0, Lm4/f;->c:I

    if-ge v1, p2, :cond_60

    cmp-long p2, p6, v4

    if-nez p2, :cond_60

    invoke-virtual {p1, v1, v2}, Lj4/a;->m(I[B)J

    move-result-wide p2

    iput-wide p2, p0, Lm4/l;->d:J

    add-int/lit8 v1, v1, 0x8

    :cond_60
    iget p2, v0, Lm4/f;->c:I

    if-ge v1, p2, :cond_72

    const p2, 0xffff

    if-ne p8, p2, :cond_72

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lj4/a;->l([BI)I

    move-result p1

    iput p1, p0, Lm4/l;->e:I

    :cond_72
    return-object p0

    :cond_73
    return-object v1
.end method

.method public static s(JLjava/io/RandomAccessFile;)V
    .registers 4

    instance-of v0, p2, Lk4/g;

    if-eqz v0, :cond_c

    check-cast p2, Lk4/g;

    iget-object p2, p2, Lk4/g;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_f

    :cond_c
    invoke-virtual {p2, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_f
    return-void
.end method

.method public static u(Lm4/n;IJLjava/io/ByteArrayOutputStream;Lj4/a;Ljava/nio/charset/Charset;)V
    .registers 15

    const/16 v0, 0x8

    new-array v0, v0, [B

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p5, v1, p4}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget-object v1, p0, Lm4/n;->c:Lm4/d;

    iget v1, v1, Lm4/d;->b:I

    invoke-virtual {p5, v1, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v1, p0, Lm4/n;->c:Lm4/d;

    iget v1, v1, Lm4/d;->c:I

    invoke-virtual {p5, v1, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v1, p0, Lm4/n;->b:Lo1/a;

    iget-object v1, v1, Lo1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    iget-boolean v3, p0, Lm4/n;->f:Z

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lm4/n;->b:Lo1/a;

    iget-object v3, v3, Lo1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lm4/n;->c:Lm4/d;

    iget v4, v4, Lm4/d;->b:I

    invoke-static {v3, v4}, Lj4/a;->b(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_3b

    :cond_3a
    move-wide v3, v1

    :goto_3b
    const-wide/32 v5, 0xffff

    cmp-long v7, v3, v5

    if-lez v7, :cond_43

    move-wide v3, v5

    :cond_43
    long-to-int v3, v3

    invoke-virtual {p5, v3, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    cmp-long v3, v1, v5

    if-lez v3, :cond_4c

    move-wide v1, v5

    :cond_4c
    long-to-int v1, v1

    invoke-virtual {p5, v1, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    invoke-virtual {p5, p1, p4}, Lj4/a;->v(ILjava/io/OutputStream;)V

    const-wide v1, 0xffffffffL

    cmp-long p1, p2, v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-lez p1, :cond_65

    invoke-static {v1, v2, v0}, Lj4/a;->x(J[B)V

    invoke-virtual {p4, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6b

    :cond_65
    invoke-static {p2, p3, v0}, Lj4/a;->x(J[B)V

    invoke-virtual {p4, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_6b
    iget-object p0, p0, Lm4/n;->c:Lm4/d;

    iget-object p0, p0, Lm4/d;->h:Ljava/lang/String;

    invoke-static {p0}, La/b;->O(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-static {p0, p6}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    invoke-virtual {p5, p1, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    invoke-virtual {p4, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_84

    :cond_81
    invoke-virtual {p5, v4, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    :goto_84
    return-void
.end method

.method public static x(J[B)V
    .registers 5

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x7

    aput-byte v0, p2, v1

    const/16 v0, 0x30

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x6

    aput-byte v0, p2, v1

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p2, v1

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p2, v1

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x0

    aput-byte p0, p2, p1

    return-void
.end method


# virtual methods
.method public final B(Lm4/n;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    .registers 14

    if-eqz p3, :cond_55

    instance-of v0, p2, Ll4/d;

    if-eqz v0, :cond_51

    move-object v0, p2

    check-cast v0, Ll4/d;

    array-length v1, p3

    invoke-virtual {v0}, Ll4/d;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    goto :goto_40

    :cond_12
    iget-object v0, v0, Ll4/d;->a:Ljava/io/OutputStream;

    check-cast v0, Ll4/h;

    if-ltz v1, :cond_46

    iget-wide v4, v0, Ll4/h;->b:J

    const-wide/32 v6, 0x10000

    cmp-long v2, v4, v6

    const/4 v6, 0x1

    if-ltz v2, :cond_2d

    iget-wide v7, v0, Ll4/h;->e:J

    int-to-long v1, v1

    add-long/2addr v7, v1

    cmp-long v1, v7, v4

    if-gtz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    move v1, v3

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v1, v6

    :goto_2e
    if-nez v1, :cond_40

    :try_start_30
    invoke-virtual {v0}, Ll4/h;->e()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Ll4/h;->e:J
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_39

    move v3, v6

    goto :goto_40

    :catch_39
    move-exception p1

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_40
    :goto_40
    if-eqz v3, :cond_51

    invoke-virtual {p0, p1, p2, p4}, Lj4/a;->c(Lm4/n;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void

    :cond_46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "negative buffersize for checkBufferSizeAndStartNextSplitFile"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_55
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid buff to write as zip headers"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lm4/n;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 15

    if-eqz p1, :cond_f4

    if-eqz p2, :cond_f4

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_9
    invoke-static {p1, p2}, Lj4/a;->e(Lm4/n;Ljava/io/OutputStream;)V

    iget-boolean v0, p1, Lm4/n;->i:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lm4/n;->e:Lm4/k;

    if-eqz v0, :cond_1d

    iget-wide v3, v0, Lm4/k;->j:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1d

    goto :goto_21

    :cond_1d
    iget-object v0, p1, Lm4/n;->c:Lm4/d;

    iget-wide v3, v0, Lm4/d;->f:J

    :goto_21
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, Lj4/a;

    invoke-virtual {p0, p1, v7, v0, p3}, Lj4/a;->t(Lm4/n;Ljava/io/ByteArrayOutputStream;Lj4/a;Ljava/nio/charset/Charset;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    iget-boolean v0, p1, Lm4/n;->i:Z

    if-nez v0, :cond_48

    const-wide v8, 0xffffffffL

    cmp-long v0, v3, v8

    if-gez v0, :cond_48

    iget-object v0, p1, Lm4/n;->b:Lo1/a;

    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v6, 0xffff

    if-lt v0, v6, :cond_d2

    :cond_48
    iget-object v0, p1, Lm4/n;->e:Lm4/k;

    if-nez v0, :cond_53

    new-instance v0, Lm4/k;

    invoke-direct {v0}, Lm4/k;-><init>()V

    iput-object v0, p1, Lm4/n;->e:Lm4/k;

    :cond_53
    iget-object v0, p1, Lm4/n;->d:Lm4/j;

    if-nez v0, :cond_5e

    new-instance v0, Lm4/j;

    invoke-direct {v0}, Lm4/j;-><init>()V

    iput-object v0, p1, Lm4/n;->d:Lm4/j;

    :cond_5e
    iget-object v0, p1, Lm4/n;->d:Lm4/j;

    int-to-long v8, v5

    add-long/2addr v8, v3

    iput-wide v8, v0, Lm4/j;->c:J

    instance-of v0, p2, Ll4/h;

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_78

    move-object v0, p2

    check-cast v0, Ll4/h;

    iget-wide v9, v0, Ll4/h;->b:J

    cmp-long v0, v9, v1

    if-eqz v0, :cond_84

    move v0, v6

    goto :goto_85

    :catchall_75
    move-exception p1

    goto/16 :goto_eb

    :cond_78
    instance-of v0, p2, Ll4/d;

    if-eqz v0, :cond_84

    move-object v0, p2

    check-cast v0, Ll4/d;

    invoke-virtual {v0}, Ll4/d;->e()Z

    move-result v0

    goto :goto_85

    :cond_84
    move v0, v8

    :goto_85
    if-eqz v0, :cond_a0

    instance-of v0, p2, Ll4/h;

    if-eqz v0, :cond_91

    move-object v0, p2

    check-cast v0, Ll4/h;

    iget v0, v0, Ll4/h;->d:I

    goto :goto_98

    :cond_91
    move-object v0, p2

    check-cast v0, Ll4/d;

    invoke-virtual {v0}, Ll4/d;->a()I

    move-result v0

    :goto_98
    iget-object v1, p1, Lm4/n;->d:Lm4/j;

    iput v0, v1, Lm4/j;->b:I

    add-int/2addr v0, v6

    iput v0, v1, Lm4/j;->d:I

    goto :goto_a6

    :cond_a0
    iget-object v0, p1, Lm4/n;->d:Lm4/j;

    iput v8, v0, Lm4/j;->b:I

    iput v6, v0, Lm4/j;->d:I

    :goto_a6
    invoke-static {p1, v5, v3, v4}, Lj4/a;->a(Lm4/n;IJ)Lm4/k;

    move-result-object v0

    iput-object v0, p1, Lm4/n;->e:Lm4/k;

    iget-object v1, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v1, Lj4/a;

    invoke-static {v0, v7, v1}, Lj4/a;->A(Lm4/k;Ljava/io/ByteArrayOutputStream;Lj4/a;)V

    iget-object v0, p1, Lm4/n;->d:Lm4/j;

    iget-object v1, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v1, Lj4/a;

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    long-to-int v2, v8

    invoke-virtual {v1, v2, v7}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget v2, v0, Lm4/j;->b:I

    invoke-virtual {v1, v2, v7}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget-wide v8, v0, Lm4/j;->c:J

    invoke-virtual {v1, v8, v9, v7}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget v0, v0, Lm4/j;->d:I

    invoke-virtual {v1, v0, v7}, Lj4/a;->v(ILjava/io/OutputStream;)V

    :cond_d2
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lj4/a;

    move-object v0, p1

    move v1, v5

    move-wide v2, v3

    move-object v4, v7

    move-object v5, v6

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lj4/a;->u(Lm4/n;IJLjava/io/ByteArrayOutputStream;Lj4/a;Ljava/nio/charset/Charset;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lj4/a;->B(Lm4/n;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_e7
    .catchall {:try_start_9 .. :try_end_e7} :catchall_75

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :goto_eb
    :try_start_eb
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_ef

    goto :goto_f3

    :catchall_ef
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f3
    throw p1

    :cond_f4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(I[B)Ljava/util/ArrayList;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, p1, :cond_3b

    new-instance v3, Lm4/f;

    invoke-direct {v3}, Lm4/f;-><init>()V

    iget-object v4, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v4, Lj4/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Lj4/a;->o(I[B)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lm4/f;->b:J

    add-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v4, Lj4/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Lj4/a;->o(I[B)I

    move-result v4

    iput v4, v3, Lm4/f;->c:I

    add-int/lit8 v2, v2, 0x2

    if-lez v4, :cond_36

    new-array v5, v4, [B

    invoke-static {p2, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v3, Lm4/f;->d:[B

    :cond_36
    add-int/2addr v2, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    return-object v0
.end method

.method public final g(Ljava/io/RandomAccessFile;Lm4/i;)Lm4/n;
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    new-instance v0, Lm4/n;

    invoke-direct {v0}, Lm4/n;-><init>()V

    return-object v0

    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v7, 0x16

    cmp-long v3, v3, v7

    if-ltz v3, :cond_38c

    new-instance v3, Lm4/n;

    invoke-direct {v3}, Lm4/n;-><init>()V

    iput-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    :try_start_27
    iget-object v4, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v4, Lj4/a;

    invoke-virtual {v1, v0, v4, v2}, Lj4/a;->h(Ljava/io/RandomAccessFile;Lj4/a;Lm4/i;)Lm4/d;

    move-result-object v4

    iput-object v4, v3, Lm4/n;->c:Lm4/d;
    :try_end_31
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_27 .. :try_end_31} :catch_38a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_37e

    iget-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v3, Lm4/n;

    iget-object v4, v3, Lm4/n;->c:Lm4/d;

    iget v7, v4, Lm4/d;->e:I

    if-nez v7, :cond_3c

    return-object v3

    :cond_3c
    iget-object v7, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v7, Lj4/a;

    iget-wide v8, v4, Lm4/d;->g:J

    new-instance v4, Lm4/j;

    invoke-direct {v4}, Lm4/j;-><init>()V

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    const-wide/16 v12, 0x8

    sub-long/2addr v8, v12

    sub-long/2addr v8, v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9, v0}, Lj4/a;->s(JLjava/io/RandomAccessFile;)V

    invoke-virtual {v7, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v10}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v11

    cmp-long v8, v8, v11

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-nez v8, :cond_7e

    iget-object v8, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v8, Lm4/n;

    iput-boolean v11, v8, Lm4/n;->i:Z

    iput-object v10, v4, Lm4/m;->a:Ljava/lang/Object;

    invoke-virtual {v7, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v8

    iput v8, v4, Lm4/j;->b:I

    invoke-virtual {v7, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    move-result-wide v12

    iput-wide v12, v4, Lm4/j;->c:J

    invoke-virtual {v7, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v7

    iput v7, v4, Lm4/j;->d:I

    goto :goto_85

    :cond_7e
    iget-object v4, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v4, Lm4/n;

    iput-boolean v9, v4, Lm4/n;->i:Z

    const/4 v4, 0x0

    :goto_85
    iput-object v4, v3, Lm4/n;->d:Lm4/j;

    iget-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v3, Lm4/n;

    iget-boolean v4, v3, Lm4/n;->i:Z

    if-eqz v4, :cond_127

    iget-object v4, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v4, Lj4/a;

    iget-object v7, v3, Lm4/n;->d:Lm4/j;

    if-eqz v7, :cond_11f

    iget-wide v7, v7, Lm4/j;->c:J

    cmp-long v10, v7, v5

    if-ltz v10, :cond_117

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v7, Lm4/k;

    invoke-direct {v7}, Lm4/k;-><init>()V

    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v8

    int-to-long v12, v8

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v14

    cmp-long v10, v12, v14

    if-nez v10, :cond_10f

    iput-object v8, v7, Lm4/m;->a:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    move-result-wide v12

    iput-wide v12, v7, Lm4/k;->b:J

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v8

    iput v8, v7, Lm4/k;->c:I

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v8

    iput v8, v7, Lm4/k;->d:I

    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v8

    iput v8, v7, Lm4/k;->e:I

    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v8

    iput v8, v7, Lm4/k;->f:I

    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    move-result-wide v12

    iput-wide v12, v7, Lm4/k;->g:J

    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    move-result-wide v12

    iput-wide v12, v7, Lm4/k;->h:J

    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    move-result-wide v12

    iput-wide v12, v7, Lm4/k;->i:J

    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    move-result-wide v12

    iput-wide v12, v7, Lm4/k;->j:J

    iget-wide v12, v7, Lm4/k;->b:J

    const-wide/16 v14, 0x2c

    sub-long/2addr v12, v14

    cmp-long v4, v12, v5

    if-lez v4, :cond_fb

    long-to-int v4, v12

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    :cond_fb
    iput-object v7, v3, Lm4/n;->e:Lm4/k;

    iget-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v3, Lm4/n;

    iget-object v4, v3, Lm4/n;->e:Lm4/k;

    if-eqz v4, :cond_10c

    iget v4, v4, Lm4/k;->e:I

    if-lez v4, :cond_10c

    iput-boolean v11, v3, Lm4/n;->f:Z

    goto :goto_127

    :cond_10c
    iput-boolean v9, v3, Lm4/n;->f:Z

    goto :goto_127

    :cond_10f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid signature for zip64 end of central directory record"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_117
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid offset for start of end of central directory record"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_127
    :goto_127
    iget-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v3, Lm4/n;

    iget-object v4, v1, Lj4/a;->a:Ljava/lang/Object;

    check-cast v4, Lj4/a;

    iget-object v2, v2, Lm4/i;->a:Ljava/nio/charset/Charset;

    new-instance v5, Lo1/a;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lo1/a;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    move-object v10, v8

    check-cast v10, Lm4/n;

    iget-boolean v11, v10, Lm4/n;->i:Z

    if-eqz v11, :cond_14a

    iget-object v10, v10, Lm4/n;->e:Lm4/k;

    iget-wide v10, v10, Lm4/k;->j:J

    goto :goto_14e

    :cond_14a
    iget-object v10, v10, Lm4/n;->c:Lm4/d;

    iget-wide v10, v10, Lm4/d;->f:J

    :goto_14e
    check-cast v8, Lm4/n;

    iget-boolean v12, v8, Lm4/n;->i:Z

    if-eqz v12, :cond_159

    iget-object v8, v8, Lm4/n;->e:Lm4/k;

    iget-wide v12, v8, Lm4/k;->h:J

    goto :goto_15e

    :cond_159
    iget-object v8, v8, Lm4/n;->c:Lm4/d;

    iget v8, v8, Lm4/d;->e:I

    int-to-long v12, v8

    :goto_15e
    move-wide/from16 v19, v12

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v8, 0x2

    new-array v14, v8, [B

    new-array v6, v6, [B

    move v10, v9

    :goto_169
    int-to-long v11, v9

    cmp-long v11, v11, v19

    if-gez v11, :cond_34e

    new-instance v15, Lm4/g;

    invoke-direct {v15}, Lm4/g;-><init>()V

    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v11

    int-to-long v11, v11

    sget-object v13, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v13}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v16

    cmp-long v11, v11, v16

    if-nez v11, :cond_332

    iput-object v13, v15, Lm4/m;->a:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v11

    iput v11, v15, Lm4/g;->t:I

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v11

    iput v11, v15, Lm4/b;->b:I

    new-array v8, v8, [B

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    aget-byte v11, v8, v10

    invoke-static {v10, v11}, La/b;->J(IB)Z

    move-result v11

    iput-boolean v11, v15, Lm4/b;->l:Z

    aget-byte v11, v8, v10

    const/4 v12, 0x3

    invoke-static {v12, v11}, La/b;->J(IB)Z

    move-result v11

    iput-boolean v11, v15, Lm4/b;->n:Z

    const/4 v11, 0x1

    aget-byte v11, v8, v11

    invoke-static {v12, v11}, La/b;->J(IB)Z

    move-result v11

    iput-boolean v11, v15, Lm4/b;->q:Z

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, v15, Lm4/b;->c:[B

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v8

    invoke-static {v8}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v8

    iput-object v8, v15, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v8

    int-to-long v12, v8

    iput-wide v12, v15, Lm4/b;->e:J

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v4, v10, v6}, Lj4/a;->m(I[B)J

    move-result-wide v11

    iput-wide v11, v15, Lm4/b;->f:J

    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-static {v8, v10}, Ljava/util/Arrays;->fill([BB)V

    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    const/4 v11, 0x4

    invoke-virtual {v0, v8, v10, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v4, v10, v8}, Lj4/a;->m(I[B)J

    move-result-wide v11

    iput-wide v11, v15, Lm4/b;->g:J

    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-static {v8, v10}, Ljava/util/Arrays;->fill([BB)V

    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    const/4 v11, 0x4

    invoke-virtual {v0, v8, v10, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v4, v10, v8}, Lj4/a;->m(I[B)J

    move-result-wide v11

    iput-wide v11, v15, Lm4/b;->h:J

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v8

    iput v8, v15, Lm4/b;->i:I

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v11

    iput v11, v15, Lm4/b;->j:I

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v12

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v11

    iput v11, v15, Lm4/g;->u:I

    invoke-virtual {v0, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    iput-object v11, v15, Lm4/g;->v:[B

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    move v13, v12

    invoke-virtual {v4, v10, v6}, Lj4/a;->m(I[B)J

    move-result-wide v11

    iput-wide v11, v15, Lm4/g;->w:J

    if-lez v8, :cond_32a

    new-array v8, v8, [B

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-boolean v11, v15, Lm4/b;->q:Z

    invoke-static {v8, v11, v2}, La/b;->t([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Lm4/b;->k:Ljava/lang/String;

    iget-object v11, v15, Lm4/g;->v:[B

    aget-byte v12, v11, v10

    move-object/from16 v21, v6

    if-eqz v12, :cond_250

    const/4 v6, 0x4

    invoke-static {v6, v12}, La/b;->J(IB)Z

    move-result v6

    if-eqz v6, :cond_250

    goto :goto_26d

    :cond_250
    const/4 v6, 0x3

    aget-byte v6, v11, v6

    if-eqz v6, :cond_25d

    const/4 v11, 0x6

    invoke-static {v11, v6}, La/b;->J(IB)Z

    move-result v6

    if-eqz v6, :cond_25d

    goto :goto_26d

    :cond_25d
    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26d

    const-string v6, "\\"

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26e

    :cond_26d
    :goto_26d
    const/4 v10, 0x1

    :cond_26e
    iput-boolean v10, v15, Lm4/b;->s:Z

    iget v6, v15, Lm4/b;->j:I

    const/4 v8, 0x4

    if-gtz v6, :cond_276

    goto :goto_28f

    :cond_276
    if-ge v6, v8, :cond_27f

    if-lez v6, :cond_27d

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_27d
    const/4 v6, 0x0

    goto :goto_28d

    :cond_27f
    new-array v8, v6, [B

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    :try_start_284
    invoke-virtual {v1, v6, v8}, Lj4/a;->d(I[B)Ljava/util/ArrayList;

    move-result-object v6
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_288} :catch_289

    goto :goto_28d

    :catch_289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    :goto_28d
    iput-object v6, v15, Lm4/b;->r:Ljava/util/List;

    :goto_28f
    iget-object v6, v15, Lm4/b;->r:Ljava/util/List;

    if-eqz v6, :cond_2e5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_29a

    goto :goto_2e5

    :cond_29a
    iget-object v10, v15, Lm4/b;->r:Ljava/util/List;

    iget-wide v11, v15, Lm4/b;->h:J

    move-object/from16 p2, v5

    iget-wide v5, v15, Lm4/b;->g:J

    move/from16 v22, v9

    iget-wide v8, v15, Lm4/g;->w:J

    iget v1, v15, Lm4/g;->u:I

    move-wide/from16 v16, v11

    move-object v11, v4

    move-object/from16 v23, v3

    move v3, v13

    move-wide/from16 v12, v16

    move-object/from16 v25, v7

    move-object/from16 v24, v14

    move-object v7, v15

    move-wide v14, v5

    move-wide/from16 v16, v8

    move/from16 v18, v1

    invoke-static/range {v10 .. v18}, Lj4/a;->r(Ljava/util/List;Lj4/a;JJJI)Lm4/l;

    move-result-object v1

    if-nez v1, :cond_2c1

    goto :goto_2f1

    :cond_2c1
    iput-object v1, v7, Lm4/b;->o:Lm4/l;

    iget-wide v5, v1, Lm4/l;->c:J

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-eqz v10, :cond_2cd

    iput-wide v5, v7, Lm4/b;->h:J

    :cond_2cd
    iget-wide v5, v1, Lm4/l;->b:J

    cmp-long v10, v5, v8

    if-eqz v10, :cond_2d5

    iput-wide v5, v7, Lm4/b;->g:J

    :cond_2d5
    iget-wide v5, v1, Lm4/l;->d:J

    cmp-long v8, v5, v8

    if-eqz v8, :cond_2dd

    iput-wide v5, v7, Lm4/g;->w:J

    :cond_2dd
    iget v1, v1, Lm4/l;->e:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2f1

    iput v1, v7, Lm4/g;->u:I

    goto :goto_2f1

    :cond_2e5
    :goto_2e5
    move-object/from16 v23, v3

    move-object/from16 p2, v5

    move-object/from16 v25, v7

    move/from16 v22, v9

    move v3, v13

    move-object/from16 v24, v14

    move-object v7, v15

    :cond_2f1
    :goto_2f1
    invoke-static {v7, v4}, Lj4/a;->f(Lm4/b;Lj4/a;)V

    if-lez v3, :cond_303

    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-boolean v3, v7, Lm4/b;->q:Z

    invoke-static {v1, v3, v2}, La/b;->t([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lm4/g;->x:Ljava/lang/String;

    :cond_303
    iget-boolean v1, v7, Lm4/b;->l:Z

    if-eqz v1, :cond_314

    iget-object v1, v7, Lm4/b;->p:Lm4/a;

    if-eqz v1, :cond_310

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v1, v7, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    goto :goto_314

    :cond_310
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v1, v7, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    :cond_314
    :goto_314
    move-object/from16 v1, v25

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v22, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x0

    move-object/from16 v5, p2

    move-object v7, v1

    move-object/from16 v6, v21

    move-object/from16 v3, v23

    move-object/from16 v14, v24

    move-object/from16 v1, p0

    goto/16 :goto_169

    :cond_32a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid entry name in file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_332
    move/from16 v22, v9

    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Expected central directory entry not found (#"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v9, v22, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34e
    move-object/from16 v23, v3

    move-object v2, v5

    move-object v1, v7

    iput-object v1, v2, Lo1/a;->b:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v1

    int-to-long v5, v1

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_373

    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v1

    if-lez v1, :cond_373

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_373
    move-object/from16 v3, v23

    iput-object v2, v3, Lm4/n;->b:Lo1/a;

    move-object/from16 v1, p0

    iget-object v0, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v0, Lm4/n;

    return-object v0

    :catch_37e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Zip headers not found. Probably not a zip file or a corrupted zip file"

    invoke-direct {v2, v3, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_38a
    move-exception v0

    throw v0

    :cond_38c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/io/RandomAccessFile;Lj4/a;Lm4/i;)Lm4/d;
    .registers 14

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_c6

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lj4/a;->s(JLjava/io/RandomAccessFile;)V

    iget-object v4, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v4, Lj4/a;

    invoke-virtual {v4, p1}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_22

    goto :goto_59

    :cond_22
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-gez v2, :cond_36

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    :cond_36
    :goto_36
    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_be

    cmp-long v2, v0, v2

    if-lez v2, :cond_be

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lj4/a;->s(JLjava/io/RandomAccessFile;)V

    iget-object v6, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v6, Lj4/a;

    invoke-virtual {v6, p1}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_bb

    :goto_59
    const-wide/16 v2, 0x4

    add-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Lj4/a;->s(JLjava/io/RandomAccessFile;)V

    new-instance v2, Lm4/d;

    invoke-direct {v2}, Lm4/d;-><init>()V

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    iput-object v3, v2, Lm4/m;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, v2, Lm4/d;->b:I

    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, v2, Lm4/d;->c:I

    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, v2, Lm4/d;->d:I

    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, v2, Lm4/d;->e:I

    invoke-virtual {p2, p1}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    iput-wide v0, v2, Lm4/d;->g:J

    iget-object v0, p0, Lj4/a;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v0, p0, Lj4/a;->b:[B

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lj4/a;->m(I[B)J

    move-result-wide v3

    iput-wide v3, v2, Lm4/d;->f:J

    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    move-result p2

    iget-object p3, p3, Lm4/i;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    if-gtz p2, :cond_9d

    goto :goto_ab

    :cond_9d
    :try_start_9d
    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    if-eqz p3, :cond_a5

    goto :goto_a7

    :cond_a5
    sget-object p3, Lo4/b;->c:Ljava/nio/charset/Charset;

    :goto_a7
    invoke-static {p2, v1, p3}, La/b;->t([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_ab} :catch_ab

    :catch_ab
    :goto_ab
    if-eqz v0, :cond_af

    iput-object v0, v2, Lm4/d;->h:Ljava/lang/String;

    :cond_af
    iget-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast p1, Lm4/n;

    iget p2, v2, Lm4/d;->b:I

    if-lez p2, :cond_b8

    const/4 v1, 0x1

    :cond_b8
    iput-boolean v1, p1, Lm4/n;->f:Z

    return-object v2

    :cond_bb
    sub-long/2addr v4, v2

    goto/16 :goto_36

    :cond_be
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip headers not found. Probably not a zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file size less than size of zip headers. Probably not a zip file."

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Ljava/io/PushbackInputStream;)I
    .registers 4

    iget-object v0, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v0, [B

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    iget-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast p1, [B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj4/a;->l([BI)I

    move-result p1

    return p1
.end method

.method public final k(Ljava/io/RandomAccessFile;)I
    .registers 3

    iget-object v0, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    check-cast p1, [B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj4/a;->l([BI)I

    move-result p1

    return p1
.end method

.method public final m(I[B)J
    .registers 8

    array-length v0, p2

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_e

    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_e
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, [B

    array-length v3, p2

    sub-int/2addr v3, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 p1, 0x0

    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr p1, v3

    shl-long/2addr p1, v2

    move-object v3, v0

    check-cast v3, [B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr p1, v3

    shl-long/2addr p1, v2

    move-object v3, v0

    check-cast v3, [B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr p1, v3

    shl-long/2addr p1, v2

    move-object v3, v0

    check-cast v3, [B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr p1, v3

    shl-long/2addr p1, v2

    move-object v3, v0

    check-cast v3, [B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr p1, v3

    shl-long/2addr p1, v2

    move-object v3, v0

    check-cast v3, [B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr p1, v3

    shl-long/2addr p1, v2

    move-object v3, v0

    check-cast v3, [B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr p1, v3

    shl-long/2addr p1, v2

    check-cast v0, [B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final n(Ljava/io/RandomAccessFile;)J
    .registers 4

    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast p1, [B

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lj4/a;->m(I[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final p(Ljava/io/PushbackInputStream;)I
    .registers 4

    iget-object v0, p0, Lj4/a;->b:[B

    array-length v1, v0

    invoke-static {p1, v0, v1}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    iget-object p1, p0, Lj4/a;->b:[B

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lj4/a;->o(I[B)I

    move-result p1

    return p1
.end method

.method public final q(Ljava/io/RandomAccessFile;)I
    .registers 3

    iget-object v0, p0, Lj4/a;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object p1, p0, Lj4/a;->b:[B

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lj4/a;->o(I[B)I

    move-result p1

    return p1
.end method

.method public final t(Lm4/n;Ljava/io/ByteArrayOutputStream;Lj4/a;Ljava/nio/charset/Charset;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lm4/n;->b:Lo1/a;

    if-eqz v5, :cond_221

    iget-object v5, v5, Lo1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_221

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1c

    goto/16 :goto_221

    :cond_1c
    iget-object v5, v0, Lm4/n;->b:Lo1/a;

    iget-object v5, v5, Lo1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_26
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_221

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm4/g;

    if-eqz v6, :cond_219

    const/4 v7, 0x2

    :try_start_35
    new-array v8, v7, [B

    const/4 v9, 0x0

    aput-byte v9, v8, v9

    const/4 v10, 0x1

    aput-byte v9, v8, v10

    iget-wide v11, v6, Lm4/b;->g:J

    const-wide v13, 0xffffffffL

    cmp-long v11, v11, v13

    const v12, 0xffff

    if-gez v11, :cond_5f

    move-object v15, v8

    iget-wide v7, v6, Lm4/b;->h:J

    cmp-long v7, v7, v13

    if-gez v7, :cond_60

    iget-wide v7, v6, Lm4/g;->w:J

    cmp-long v7, v7, v13

    if-gez v7, :cond_60

    iget v7, v6, Lm4/g;->u:I

    if-lt v7, v12, :cond_5d

    goto :goto_60

    :cond_5d
    move v7, v9

    goto :goto_61

    :cond_5f
    move-object v15, v8

    :cond_60
    :goto_60
    move v7, v10

    :goto_61
    iget-object v8, v6, Lm4/m;->a:Ljava/lang/Object;

    check-cast v8, Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v11

    long-to-int v8, v11

    invoke-virtual {v3, v8, v2}, Lj4/a;->v(ILjava/io/OutputStream;)V

    iget v8, v6, Lm4/g;->t:I

    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget v8, v6, Lm4/b;->b:I

    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v8, v6, Lm4/b;->c:[B

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    iget-object v8, v6, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v8

    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v8, v1, Lj4/a;->b:[B

    iget-wide v11, v6, Lm4/b;->e:J

    invoke-static {v11, v12, v8}, Lj4/a;->x(J[B)V

    iget-object v8, v1, Lj4/a;->b:[B

    const/4 v11, 0x4

    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v8, v1, Lj4/a;->b:[B

    iget-wide v13, v6, Lm4/b;->f:J

    invoke-static {v13, v14, v8}, Lj4/a;->x(J[B)V

    iget-object v8, v1, Lj4/a;->b:[B

    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v7, :cond_b7

    iget-object v8, v1, Lj4/a;->b:[B

    const-wide v12, 0xffffffffL

    invoke-static {v12, v13, v8}, Lj4/a;->x(J[B)V

    iget-object v8, v1, Lj4/a;->b:[B

    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v8, v1, Lj4/a;->b:[B

    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iput-boolean v10, v0, Lm4/n;->i:Z

    goto :goto_cf

    :cond_b7
    iget-object v8, v1, Lj4/a;->b:[B

    iget-wide v12, v6, Lm4/b;->g:J

    invoke-static {v12, v13, v8}, Lj4/a;->x(J[B)V

    iget-object v8, v1, Lj4/a;->b:[B

    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v8, v1, Lj4/a;->b:[B

    iget-wide v12, v6, Lm4/b;->h:J

    invoke-static {v12, v13, v8}, Lj4/a;->x(J[B)V

    iget-object v8, v1, Lj4/a;->b:[B

    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_cf
    new-array v8, v9, [B

    iget-object v12, v6, Lm4/b;->k:Ljava/lang/String;

    invoke-static {v12}, La/b;->O(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_df

    iget-object v8, v6, Lm4/b;->k:Ljava/lang/String;

    invoke-static {v8, v4}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v8

    :cond_df
    array-length v12, v8

    invoke-virtual {v3, v12, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    new-array v12, v11, [B

    if-eqz v7, :cond_f9

    iget-object v13, v1, Lj4/a;->b:[B

    const-wide v9, 0xffffffffL

    invoke-static {v9, v10, v13}, Lj4/a;->x(J[B)V

    iget-object v9, v1, Lj4/a;->b:[B

    const/4 v10, 0x0

    invoke-static {v9, v10, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v15

    goto :goto_107

    :cond_f9
    iget-object v9, v1, Lj4/a;->b:[B

    move-object v10, v15

    iget-wide v14, v6, Lm4/g;->w:J

    invoke-static {v14, v15, v9}, Lj4/a;->x(J[B)V

    iget-object v9, v1, Lj4/a;->b:[B

    const/4 v13, 0x0

    invoke-static {v9, v13, v12, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_107
    if-eqz v7, :cond_10c

    const/16 v9, 0x20

    goto :goto_10d

    :cond_10c
    const/4 v9, 0x0

    :goto_10d
    iget-object v13, v6, Lm4/b;->p:Lm4/a;

    if-eqz v13, :cond_113

    add-int/lit8 v9, v9, 0xb

    :cond_113
    iget-object v13, v6, Lm4/b;->r:Ljava/util/List;

    if-eqz v13, :cond_14d

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lm4/f;

    move-object/from16 v17, v12

    iget-wide v11, v15, Lm4/f;->b:J

    sget-object v18, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v18

    cmp-long v11, v11, v18

    if-eqz v11, :cond_148

    iget-wide v11, v15, Lm4/f;->b:J

    sget-object v18, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v18

    cmp-long v11, v11, v18

    if-nez v11, :cond_142

    goto :goto_148

    :cond_142
    iget v11, v15, Lm4/f;->c:I

    const/4 v12, 0x4

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    goto :goto_149

    :cond_148
    :goto_148
    const/4 v12, 0x4

    :goto_149
    move v11, v12

    move-object/from16 v12, v17

    goto :goto_11b

    :cond_14d
    move-object/from16 v17, v12

    invoke-virtual {v3, v9, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v9, v6, Lm4/g;->x:Ljava/lang/String;

    const/4 v11, 0x0

    new-array v12, v11, [B

    invoke-static {v9}, La/b;->O(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_161

    invoke-static {v9, v4}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v12

    :cond_161
    array-length v9, v12

    invoke-virtual {v3, v9, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    if-eqz v7, :cond_186

    iget-object v9, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    move-object v13, v9

    check-cast v13, [B

    const/4 v14, 0x0

    int-to-byte v11, v14

    const/4 v15, 0x3

    aput-byte v11, v13, v15

    int-to-byte v11, v14

    const/4 v15, 0x2

    aput-byte v11, v13, v15

    const/16 v15, 0xff

    int-to-byte v11, v15

    const/16 v16, 0x1

    aput-byte v11, v13, v16

    int-to-byte v11, v15

    aput-byte v11, v13, v14

    check-cast v9, [B

    const/4 v11, 0x2

    invoke-virtual {v2, v9, v14, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_18b

    :cond_186
    iget v9, v6, Lm4/g;->u:I

    invoke-virtual {v3, v9, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    :goto_18b
    move-object v9, v10

    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    iget-object v9, v6, Lm4/g;->v:[B

    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v9, v17

    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    array-length v9, v8

    if-lez v9, :cond_19f

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    :cond_19f
    if-eqz v7, :cond_1c7

    const/4 v7, 0x1

    iput-boolean v7, v0, Lm4/n;->i:Z

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v3, v7, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    const/16 v7, 0x1c

    invoke-virtual {v3, v7, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-wide v7, v6, Lm4/b;->h:J

    invoke-virtual {v3, v7, v8, v2}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget-wide v7, v6, Lm4/b;->g:J

    invoke-virtual {v3, v7, v8, v2}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget-wide v7, v6, Lm4/g;->w:J

    invoke-virtual {v3, v7, v8, v2}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget v7, v6, Lm4/g;->u:I

    invoke-virtual {v3, v7, v2}, Lj4/a;->v(ILjava/io/OutputStream;)V

    :cond_1c7
    iget-object v7, v6, Lm4/b;->p:Lm4/a;

    if-eqz v7, :cond_207

    iget-object v8, v7, Lm4/m;->a:Ljava/lang/Object;

    check-cast v8, Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget v8, v7, Lm4/a;->b:I

    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v8, v7, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/enums/AesVersion;->getVersionNumber()I

    move-result v8

    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v8, v7, Lm4/a;->d:Ljava/lang/String;

    invoke-static {v8, v4}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v8, 0x1

    new-array v8, v8, [B

    iget-object v9, v7, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    move-result v9

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    iget-object v7, v7, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v7

    invoke-virtual {v3, v7, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    :cond_207
    invoke-virtual {v1, v6, v2}, Lj4/a;->y(Lm4/g;Ljava/io/ByteArrayOutputStream;)V

    array-length v6, v12

    if-lez v6, :cond_26

    invoke-virtual {v2, v12}, Ljava/io/OutputStream;->write([B)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_210} :catch_212

    goto/16 :goto_26

    :catch_212
    move-exception v0

    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_219
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameters is null, cannot write local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_221
    :goto_221
    return-void
.end method

.method public final v(ILjava/io/OutputStream;)V
    .registers 7

    iget-object v0, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    move-object v1, v0

    check-cast v1, [B

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    check-cast v0, [B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final w(JLjava/io/OutputStream;)V
    .registers 5

    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {p1, p2, v0}, Lj4/a;->x(J[B)V

    iget-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final y(Lm4/g;Ljava/io/ByteArrayOutputStream;)V
    .registers 8

    iget-object v0, p1, Lm4/b;->r:Ljava/util/List;

    if-eqz v0, :cond_55

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_55

    :cond_b
    iget-object p1, p1, Lm4/b;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm4/f;

    iget-wide v1, v0, Lm4/f;->b:J

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    iget-wide v1, v0, Lm4/f;->b:J

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_36

    goto :goto_11

    :cond_36
    iget-object v1, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v1, Lj4/a;

    iget-wide v2, v0, Lm4/f;->b:J

    long-to-int v2, v2

    invoke-virtual {v1, v2, p2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget-object v1, p0, Lj4/a;->a:Ljava/lang/Object;

    check-cast v1, Lj4/a;

    iget v2, v0, Lm4/f;->c:I

    invoke-virtual {v1, v2, p2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    iget v1, v0, Lm4/f;->c:I

    if-lez v1, :cond_11

    iget-object v0, v0, Lm4/f;->d:[B

    if-eqz v0, :cond_11

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_11

    :cond_55
    :goto_55
    return-void
.end method

.method public final z(ILjava/io/ByteArrayOutputStream;)V
    .registers 6

    iget-object v0, p0, Lj4/a;->b:[B

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
