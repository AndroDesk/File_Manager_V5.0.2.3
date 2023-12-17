.class public final Lj4/a;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:[B

.field public c:Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x8

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eq p1, v0, :cond_28

    .line 8
    if-eq p1, v3, :cond_18

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Lj4/a;

    .line 15
    invoke-direct {p1, v3}, Lj4/a;-><init>(I)V

    .line 18
    iput-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 20
    new-array p1, v2, [B

    .line 22
    iput-object p1, p0, Lj4/a;->b:[B

    .line 24
    return-void

    .line 25
    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array p1, v3, [B

    .line 30
    iput-object p1, p0, Lj4/a;->b:[B

    .line 32
    new-array p1, v2, [B

    .line 34
    iput-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 36
    new-array p1, v1, [B

    .line 38
    iput-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 40
    return-void

    .line 41
    :cond_28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance p1, Lj4/a;

    .line 46
    invoke-direct {p1, v3}, Lj4/a;-><init>(I)V

    .line 49
    iput-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 51
    new-array p1, v1, [B

    .line 53
    iput-object p1, p0, Lj4/a;->b:[B

    .line 55
    new-array p1, v2, [B

    .line 57
    iput-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 59
    return-void
.end method

.method public static A(Lm4/k;Ljava/io/ByteArrayOutputStream;Lj4/a;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 5
    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 8
    move-result-wide v0

    .line 9
    long-to-int v0, v0

    .line 10
    invoke-virtual {p2, v0, p1}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 13
    iget-wide v0, p0, Lm4/k;->b:J

    .line 15
    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 18
    iget v0, p0, Lm4/k;->c:I

    .line 20
    invoke-virtual {p2, v0, p1}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 23
    iget v0, p0, Lm4/k;->d:I

    .line 25
    invoke-virtual {p2, v0, p1}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 28
    iget v0, p0, Lm4/k;->e:I

    .line 30
    invoke-virtual {p2, v0, p1}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 33
    iget v0, p0, Lm4/k;->f:I

    .line 35
    invoke-virtual {p2, v0, p1}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 38
    iget-wide v0, p0, Lm4/k;->g:J

    .line 40
    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 43
    iget-wide v0, p0, Lm4/k;->h:J

    .line 45
    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 48
    iget-wide v0, p0, Lm4/k;->i:J

    .line 50
    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 53
    iget-wide v0, p0, Lm4/k;->j:J

    .line 55
    invoke-virtual {p2, v0, v1, p1}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 58
    return-void
.end method

.method public static a(Lm4/n;IJ)Lm4/k;
    .registers 9

    .line 1
    new-instance v0, Lm4/k;

    .line 3
    invoke-direct {v0}, Lm4/k;-><init>()V

    .line 6
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 8
    iput-object v1, v0, Lm4/m;->a:Ljava/lang/Object;

    .line 10
    const-wide/16 v1, 0x2c

    .line 12
    iput-wide v1, v0, Lm4/k;->b:J

    .line 14
    iget-object v1, p0, Lm4/n;->b:Lo1/a;

    .line 16
    if-eqz v1, :cond_32

    .line 18
    iget-object v1, v1, Lo1/a;->b:Ljava/lang/Object;

    .line 20
    check-cast v1, Ljava/util/List;

    .line 22
    if-eqz v1, :cond_32

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_32

    .line 30
    iget-object v1, p0, Lm4/n;->b:Lo1/a;

    .line 32
    iget-object v1, v1, Lo1/a;->b:Ljava/lang/Object;

    .line 34
    check-cast v1, Ljava/util/List;

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lm4/g;

    .line 43
    iget v2, v1, Lm4/g;->t:I

    .line 45
    iput v2, v0, Lm4/k;->c:I

    .line 47
    iget v1, v1, Lm4/b;->b:I

    .line 49
    iput v1, v0, Lm4/k;->d:I

    .line 51
    :cond_32
    iget-object v1, p0, Lm4/n;->c:Lm4/d;

    .line 53
    iget v2, v1, Lm4/d;->b:I

    .line 55
    iput v2, v0, Lm4/k;->e:I

    .line 57
    iget v1, v1, Lm4/d;->c:I

    .line 59
    iput v1, v0, Lm4/k;->f:I

    .line 61
    iget-object v1, p0, Lm4/n;->b:Lo1/a;

    .line 63
    iget-object v1, v1, Lo1/a;->b:Ljava/lang/Object;

    .line 65
    check-cast v1, Ljava/util/List;

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 70
    move-result v1

    .line 71
    int-to-long v1, v1

    .line 72
    iget-boolean v3, p0, Lm4/n;->f:Z

    .line 74
    if-eqz v3, :cond_5a

    .line 76
    iget-object v3, p0, Lm4/n;->b:Lo1/a;

    .line 78
    iget-object v3, v3, Lo1/a;->b:Ljava/lang/Object;

    .line 80
    check-cast v3, Ljava/util/List;

    .line 82
    iget-object p0, p0, Lm4/n;->c:Lm4/d;

    .line 84
    iget p0, p0, Lm4/d;->b:I

    .line 86
    invoke-static {v3, p0}, Lj4/a;->b(Ljava/util/List;I)J

    .line 89
    move-result-wide v3

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move-wide v3, v1

    .line 92
    :goto_5b
    iput-wide v3, v0, Lm4/k;->g:J

    .line 94
    iput-wide v1, v0, Lm4/k;->h:J

    .line 96
    int-to-long p0, p1

    .line 97
    iput-wide p0, v0, Lm4/k;->i:J

    .line 99
    iput-wide p2, v0, Lm4/k;->j:J

    .line 101
    return-object v0
.end method

.method public static b(Ljava/util/List;I)J
    .registers 4

    .line 1
    if-eqz p0, :cond_1c

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 8
    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1a

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lm4/g;

    .line 20
    iget v1, v1, Lm4/g;->u:I

    .line 22
    if-ne v1, p1, :cond_7

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    int-to-long p0, v0

    .line 28
    return-wide p0

    .line 29
    :cond_1c
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 31
    const-string p1, "file headers are null, cannot calculate number of entries on this disk"

    .line 33
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
.end method

.method public static e(Lm4/n;Ljava/io/OutputStream;)V
    .registers 5

    .line 1
    instance-of v0, p1, Ll4/g;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-object v0, p0, Lm4/n;->c:Lm4/d;

    .line 7
    check-cast p1, Ll4/g;

    .line 9
    invoke-interface {p1}, Ll4/g;->getFilePointer()J

    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lm4/d;->f:J

    .line 15
    invoke-interface {p1}, Ll4/g;->a()I

    .line 18
    move-result p1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    iget-boolean v0, p0, Lm4/n;->i:Z

    .line 23
    if-eqz v0, :cond_3e

    .line 25
    iget-object v0, p0, Lm4/n;->e:Lm4/k;

    .line 27
    if-nez v0, :cond_23

    .line 29
    new-instance v0, Lm4/k;

    .line 31
    invoke-direct {v0}, Lm4/k;-><init>()V

    .line 34
    iput-object v0, p0, Lm4/n;->e:Lm4/k;

    .line 36
    :cond_23
    iget-object v0, p0, Lm4/n;->d:Lm4/j;

    .line 38
    if-nez v0, :cond_2e

    .line 40
    new-instance v0, Lm4/j;

    .line 42
    invoke-direct {v0}, Lm4/j;-><init>()V

    .line 45
    iput-object v0, p0, Lm4/n;->d:Lm4/j;

    .line 47
    :cond_2e
    iget-object v0, p0, Lm4/n;->e:Lm4/k;

    .line 49
    iget-object v1, p0, Lm4/n;->c:Lm4/d;

    .line 51
    iget-wide v1, v1, Lm4/d;->f:J

    .line 53
    iput-wide v1, v0, Lm4/k;->j:J

    .line 55
    iget-object v0, p0, Lm4/n;->d:Lm4/j;

    .line 57
    iput p1, v0, Lm4/j;->b:I

    .line 59
    add-int/lit8 v1, p1, 0x1

    .line 61
    iput v1, v0, Lm4/j;->d:I

    .line 63
    :cond_3e
    iget-object p0, p0, Lm4/n;->c:Lm4/d;

    .line 65
    iput p1, p0, Lm4/d;->b:I

    .line 67
    iput p1, p0, Lm4/d;->c:I

    .line 69
    return-void
.end method

.method public static f(Lm4/b;Lj4/a;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lm4/b;->r:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_88

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_c

    .line 11
    goto/16 :goto_88

    .line 13
    :cond_c
    iget-object v0, p0, Lm4/b;->r:Ljava/util/List;

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_12

    .line 18
    goto :goto_80

    .line 19
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_80

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lm4/f;

    .line 35
    if-nez v2, :cond_25

    .line 37
    goto :goto_16

    .line 38
    :cond_25
    iget-wide v3, v2, Lm4/f;->b:J

    .line 40
    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 42
    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 45
    move-result-wide v6

    .line 46
    cmp-long v3, v3, v6

    .line 48
    if-nez v3, :cond_16

    .line 50
    iget-object v0, v2, Lm4/f;->d:[B

    .line 52
    if-eqz v0, :cond_78

    .line 54
    array-length v0, v0

    .line 55
    const/4 v1, 0x7

    .line 56
    if-ne v0, v1, :cond_78

    .line 58
    new-instance v1, Lm4/a;

    .line 60
    invoke-direct {v1}, Lm4/a;-><init>()V

    .line 63
    iput-object v5, v1, Lm4/m;->a:Ljava/lang/Object;

    .line 65
    iget v0, v2, Lm4/f;->c:I

    .line 67
    iput v0, v1, Lm4/a;->b:I

    .line 69
    iget-object v0, v2, Lm4/f;->d:[B

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-static {v2, v0}, Lj4/a;->o(I[B)I

    .line 78
    move-result p1

    .line 79
    invoke-static {p1}, Lnet/lingala/zip4j/model/enums/AesVersion;->getFromVersionNumber(I)Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 82
    move-result-object p1

    .line 83
    iput-object p1, v1, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 85
    const/4 p1, 0x2

    .line 86
    new-array v3, p1, [B

    .line 88
    invoke-static {v0, p1, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    new-instance p1, Ljava/lang/String;

    .line 93
    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .line 96
    iput-object p1, v1, Lm4/a;->d:Ljava/lang/String;

    .line 98
    const/4 p1, 0x4

    .line 99
    aget-byte p1, v0, p1

    .line 101
    and-int/lit16 p1, p1, 0xff

    .line 103
    invoke-static {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 106
    move-result-object p1

    .line 107
    iput-object p1, v1, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 109
    const/4 p1, 0x5

    .line 110
    invoke-static {p1, v0}, Lj4/a;->o(I[B)I

    .line 113
    move-result p1

    .line 114
    invoke-static {p1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 117
    move-result-object p1

    .line 118
    iput-object p1, v1, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 120
    goto :goto_80

    .line 121
    :cond_78
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 123
    const-string p1, "corrupt AES extra data records"

    .line 125
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p0

    .line 129
    :cond_80
    :goto_80
    if-eqz v1, :cond_88

    .line 131
    iput-object v1, p0, Lm4/b;->p:Lm4/a;

    .line 133
    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 135
    iput-object p1, p0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 137
    :cond_88
    :goto_88
    return-void
.end method

.method public static i(Ljava/io/PushbackInputStream;[BI)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, La/b;->V(Ljava/io/InputStream;[BII)I

    .line 5
    move-result p0

    .line 6
    if-ne p0, p2, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 11
    const-string p1, "Could not fill buffer"

    .line 13
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
.end method

.method public static l([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 7
    aget-byte v1, p0, v1

    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 16
    aget-byte v1, p0, v1

    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 20
    add-int/lit8 p1, p1, 0x3

    .line 22
    aget-byte p0, p0, p1

    .line 24
    and-int/lit16 p0, p0, 0xff

    .line 26
    shl-int/lit8 p0, p0, 0x8

    .line 28
    or-int/2addr p0, v1

    .line 29
    shl-int/lit8 p0, p0, 0x10

    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static o(I[B)I
    .registers 3

    .line 1
    aget-byte v0, p1, p0

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 7
    aget-byte p0, p1, p0

    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 13
    or-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static r(Ljava/util/List;Lj4/a;JJJI)Lm4/l;
    .registers 15

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_73

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lm4/f;

    .line 18
    if-nez v0, :cond_14

    .line 20
    goto :goto_4

    .line 21
    :cond_14
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 23
    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 26
    move-result-wide v2

    .line 27
    iget-wide v4, v0, Lm4/f;->b:J

    .line 29
    cmp-long v2, v2, v4

    .line 31
    if-nez v2, :cond_4

    .line 33
    new-instance p0, Lm4/l;

    .line 35
    invoke-direct {p0}, Lm4/l;-><init>()V

    .line 38
    iget-object v2, v0, Lm4/f;->d:[B

    .line 40
    iget v3, v0, Lm4/f;->c:I

    .line 42
    if-gtz v3, :cond_2c

    .line 44
    return-object v1

    .line 45
    :cond_2c
    const/4 v1, 0x0

    .line 46
    const-wide v4, 0xffffffffL

    .line 51
    if-lez v3, :cond_40

    .line 53
    cmp-long p2, p2, v4

    .line 55
    if-nez p2, :cond_40

    .line 57
    invoke-virtual {p1, v1, v2}, Lj4/a;->m(I[B)J

    .line 60
    move-result-wide p2

    .line 61
    iput-wide p2, p0, Lm4/l;->c:J

    .line 63
    const/16 v1, 0x8

    .line 65
    :cond_40
    iget p2, v0, Lm4/f;->c:I

    .line 67
    if-ge v1, p2, :cond_50

    .line 69
    cmp-long p2, p4, v4

    .line 71
    if-nez p2, :cond_50

    .line 73
    invoke-virtual {p1, v1, v2}, Lj4/a;->m(I[B)J

    .line 76
    move-result-wide p2

    .line 77
    iput-wide p2, p0, Lm4/l;->b:J

    .line 79
    add-int/lit8 v1, v1, 0x8

    .line 81
    :cond_50
    iget p2, v0, Lm4/f;->c:I

    .line 83
    if-ge v1, p2, :cond_60

    .line 85
    cmp-long p2, p6, v4

    .line 87
    if-nez p2, :cond_60

    .line 89
    invoke-virtual {p1, v1, v2}, Lj4/a;->m(I[B)J

    .line 92
    move-result-wide p2

    .line 93
    iput-wide p2, p0, Lm4/l;->d:J

    .line 95
    add-int/lit8 v1, v1, 0x8

    .line 97
    :cond_60
    iget p2, v0, Lm4/f;->c:I

    .line 99
    if-ge v1, p2, :cond_72

    .line 101
    const p2, 0xffff

    .line 104
    if-ne p8, p2, :cond_72

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-static {v2, v1}, Lj4/a;->l([BI)I

    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lm4/l;->e:I

    .line 115
    :cond_72
    return-object p0

    .line 116
    :cond_73
    return-object v1
.end method

.method public static s(JLjava/io/RandomAccessFile;)V
    .registers 4

    .line 1
    instance-of v0, p2, Lk4/g;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    check-cast p2, Lk4/g;

    .line 7
    iget-object p2, p2, Lk4/g;->c:Ljava/io/RandomAccessFile;

    .line 9
    invoke-virtual {p2, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p2, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 16
    :goto_f
    return-void
.end method

.method public static u(Lm4/n;IJLjava/io/ByteArrayOutputStream;Lj4/a;Ljava/nio/charset/Charset;)V
    .registers 15

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [B

    .line 5
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 7
    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 10
    move-result-wide v1

    .line 11
    long-to-int v1, v1

    .line 12
    invoke-virtual {p5, v1, p4}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 15
    iget-object v1, p0, Lm4/n;->c:Lm4/d;

    .line 17
    iget v1, v1, Lm4/d;->b:I

    .line 19
    invoke-virtual {p5, v1, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 22
    iget-object v1, p0, Lm4/n;->c:Lm4/d;

    .line 24
    iget v1, v1, Lm4/d;->c:I

    .line 26
    invoke-virtual {p5, v1, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 29
    iget-object v1, p0, Lm4/n;->b:Lo1/a;

    .line 31
    iget-object v1, v1, Lo1/a;->b:Ljava/lang/Object;

    .line 33
    check-cast v1, Ljava/util/List;

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    move-result v1

    .line 39
    int-to-long v1, v1

    .line 40
    iget-boolean v3, p0, Lm4/n;->f:Z

    .line 42
    if-eqz v3, :cond_3a

    .line 44
    iget-object v3, p0, Lm4/n;->b:Lo1/a;

    .line 46
    iget-object v3, v3, Lo1/a;->b:Ljava/lang/Object;

    .line 48
    check-cast v3, Ljava/util/List;

    .line 50
    iget-object v4, p0, Lm4/n;->c:Lm4/d;

    .line 52
    iget v4, v4, Lm4/d;->b:I

    .line 54
    invoke-static {v3, v4}, Lj4/a;->b(Ljava/util/List;I)J

    .line 57
    move-result-wide v3

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move-wide v3, v1

    .line 60
    :goto_3b
    const-wide/32 v5, 0xffff

    .line 63
    cmp-long v7, v3, v5

    .line 65
    if-lez v7, :cond_43

    .line 67
    move-wide v3, v5

    .line 68
    :cond_43
    long-to-int v3, v3

    .line 69
    invoke-virtual {p5, v3, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 72
    cmp-long v3, v1, v5

    .line 74
    if-lez v3, :cond_4c

    .line 76
    move-wide v1, v5

    .line 77
    :cond_4c
    long-to-int v1, v1

    .line 78
    invoke-virtual {p5, v1, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 81
    invoke-virtual {p5, p1, p4}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 84
    const-wide v1, 0xffffffffL

    .line 89
    cmp-long p1, p2, v1

    .line 91
    const/4 v3, 0x4

    .line 92
    const/4 v4, 0x0

    .line 93
    if-lez p1, :cond_65

    .line 95
    invoke-static {v1, v2, v0}, Lj4/a;->x(J[B)V

    .line 98
    invoke-virtual {p4, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 101
    goto :goto_6b

    .line 102
    :cond_65
    invoke-static {p2, p3, v0}, Lj4/a;->x(J[B)V

    .line 105
    invoke-virtual {p4, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 108
    :goto_6b
    iget-object p0, p0, Lm4/n;->c:Lm4/d;

    .line 110
    iget-object p0, p0, Lm4/d;->h:Ljava/lang/String;

    .line 112
    invoke-static {p0}, La/b;->O(Ljava/lang/String;)Z

    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_81

    .line 118
    invoke-static {p0, p6}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 121
    move-result-object p0

    .line 122
    array-length p1, p0

    .line 123
    invoke-virtual {p5, p1, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 126
    invoke-virtual {p4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 129
    goto :goto_84

    .line 130
    :cond_81
    invoke-virtual {p5, v4, p4}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 133
    :goto_84
    return-void
.end method

.method public static x(J[B)V
    .registers 5

    .line 1
    const/16 v0, 0x38

    .line 3
    ushr-long v0, p0, v0

    .line 5
    long-to-int v0, v0

    .line 6
    int-to-byte v0, v0

    .line 7
    const/4 v1, 0x7

    .line 8
    aput-byte v0, p2, v1

    .line 10
    const/16 v0, 0x30

    .line 12
    ushr-long v0, p0, v0

    .line 14
    long-to-int v0, v0

    .line 15
    int-to-byte v0, v0

    .line 16
    const/4 v1, 0x6

    .line 17
    aput-byte v0, p2, v1

    .line 19
    const/16 v0, 0x28

    .line 21
    ushr-long v0, p0, v0

    .line 23
    long-to-int v0, v0

    .line 24
    int-to-byte v0, v0

    .line 25
    const/4 v1, 0x5

    .line 26
    aput-byte v0, p2, v1

    .line 28
    const/16 v0, 0x20

    .line 30
    ushr-long v0, p0, v0

    .line 32
    long-to-int v0, v0

    .line 33
    int-to-byte v0, v0

    .line 34
    const/4 v1, 0x4

    .line 35
    aput-byte v0, p2, v1

    .line 37
    const/16 v0, 0x18

    .line 39
    ushr-long v0, p0, v0

    .line 41
    long-to-int v0, v0

    .line 42
    int-to-byte v0, v0

    .line 43
    const/4 v1, 0x3

    .line 44
    aput-byte v0, p2, v1

    .line 46
    const/16 v0, 0x10

    .line 48
    ushr-long v0, p0, v0

    .line 50
    long-to-int v0, v0

    .line 51
    int-to-byte v0, v0

    .line 52
    const/4 v1, 0x2

    .line 53
    aput-byte v0, p2, v1

    .line 55
    const/16 v0, 0x8

    .line 57
    ushr-long v0, p0, v0

    .line 59
    long-to-int v0, v0

    .line 60
    int-to-byte v0, v0

    .line 61
    const/4 v1, 0x1

    .line 62
    aput-byte v0, p2, v1

    .line 64
    const-wide/16 v0, 0xff

    .line 66
    and-long/2addr p0, v0

    .line 67
    long-to-int p0, p0

    .line 68
    int-to-byte p0, p0

    .line 69
    const/4 p1, 0x0

    .line 70
    aput-byte p0, p2, p1

    .line 72
    return-void
.end method


# virtual methods
.method public final B(Lm4/n;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    .registers 14

    .line 1
    if-eqz p3, :cond_55

    .line 3
    instance-of v0, p2, Ll4/d;

    .line 5
    if-eqz v0, :cond_51

    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Ll4/d;

    .line 10
    array-length v1, p3

    .line 11
    invoke-virtual {v0}, Ll4/d;->e()Z

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_12

    .line 18
    goto :goto_40

    .line 19
    :cond_12
    iget-object v0, v0, Ll4/d;->a:Ljava/io/OutputStream;

    .line 21
    check-cast v0, Ll4/h;

    .line 23
    if-ltz v1, :cond_46

    .line 25
    iget-wide v4, v0, Ll4/h;->b:J

    .line 27
    const-wide/32 v6, 0x10000

    .line 30
    cmp-long v2, v4, v6

    .line 32
    const/4 v6, 0x1

    .line 33
    if-ltz v2, :cond_2d

    .line 35
    iget-wide v7, v0, Ll4/h;->e:J

    .line 37
    int-to-long v1, v1

    .line 38
    add-long/2addr v7, v1

    .line 39
    cmp-long v1, v7, v4

    .line 41
    if-gtz v1, :cond_2b

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    move v1, v3

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    :goto_2d
    move v1, v6

    .line 47
    :goto_2e
    if-nez v1, :cond_40

    .line 49
    :try_start_30
    invoke-virtual {v0}, Ll4/h;->e()V

    .line 52
    const-wide/16 v1, 0x0

    .line 54
    iput-wide v1, v0, Ll4/h;->e:J
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_39

    .line 56
    move v3, v6

    .line 57
    goto :goto_40

    .line 58
    :catch_39
    move-exception p1

    .line 59
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 61
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 64
    throw p2

    .line 65
    :cond_40
    :goto_40
    if-eqz v3, :cond_51

    .line 67
    invoke-virtual {p0, p1, p2, p4}, Lj4/a;->c(Lm4/n;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 70
    return-void

    .line 71
    :cond_46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 76
    const-string p2, "negative buffersize for checkBufferSizeAndStartNextSplitFile"

    .line 78
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p1

    .line 82
    :cond_51
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 85
    return-void

    .line 86
    :cond_55
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 88
    const-string p2, "invalid buff to write as zip headers"

    .line 90
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1
.end method

.method public final c(Lm4/n;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 15

    .line 1
    if-eqz p1, :cond_f4

    .line 3
    if-eqz p2, :cond_f4

    .line 5
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 7
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    :try_start_9
    invoke-static {p1, p2}, Lj4/a;->e(Lm4/n;Ljava/io/OutputStream;)V

    .line 13
    iget-boolean v0, p1, Lm4/n;->i:Z

    .line 15
    const-wide/16 v1, -0x1

    .line 17
    if-eqz v0, :cond_1d

    .line 19
    iget-object v0, p1, Lm4/n;->e:Lm4/k;

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget-wide v3, v0, Lm4/k;->j:J

    .line 25
    cmp-long v0, v3, v1

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    iget-object v0, p1, Lm4/n;->c:Lm4/d;

    .line 32
    iget-wide v3, v0, Lm4/d;->f:J

    .line 34
    :goto_21
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 36
    check-cast v0, Lj4/a;

    .line 38
    invoke-virtual {p0, p1, v7, v0, p3}, Lj4/a;->t(Lm4/n;Ljava/io/ByteArrayOutputStream;Lj4/a;Ljava/nio/charset/Charset;)V

    .line 41
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 44
    move-result v5

    .line 45
    iget-boolean v0, p1, Lm4/n;->i:Z

    .line 47
    if-nez v0, :cond_48

    .line 49
    const-wide v8, 0xffffffffL

    .line 54
    cmp-long v0, v3, v8

    .line 56
    if-gez v0, :cond_48

    .line 58
    iget-object v0, p1, Lm4/n;->b:Lo1/a;

    .line 60
    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    .line 62
    check-cast v0, Ljava/util/List;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    move-result v0

    .line 68
    const v6, 0xffff

    .line 71
    if-lt v0, v6, :cond_d2

    .line 73
    :cond_48
    iget-object v0, p1, Lm4/n;->e:Lm4/k;

    .line 75
    if-nez v0, :cond_53

    .line 77
    new-instance v0, Lm4/k;

    .line 79
    invoke-direct {v0}, Lm4/k;-><init>()V

    .line 82
    iput-object v0, p1, Lm4/n;->e:Lm4/k;

    .line 84
    :cond_53
    iget-object v0, p1, Lm4/n;->d:Lm4/j;

    .line 86
    if-nez v0, :cond_5e

    .line 88
    new-instance v0, Lm4/j;

    .line 90
    invoke-direct {v0}, Lm4/j;-><init>()V

    .line 93
    iput-object v0, p1, Lm4/n;->d:Lm4/j;

    .line 95
    :cond_5e
    iget-object v0, p1, Lm4/n;->d:Lm4/j;

    .line 97
    int-to-long v8, v5

    .line 98
    add-long/2addr v8, v3

    .line 99
    iput-wide v8, v0, Lm4/j;->c:J

    .line 101
    instance-of v0, p2, Ll4/h;

    .line 103
    const/4 v6, 0x1

    .line 104
    const/4 v8, 0x0

    .line 105
    if-eqz v0, :cond_78

    .line 107
    move-object v0, p2

    .line 108
    check-cast v0, Ll4/h;

    .line 110
    iget-wide v9, v0, Ll4/h;->b:J

    .line 112
    cmp-long v0, v9, v1

    .line 114
    if-eqz v0, :cond_84

    .line 116
    move v0, v6

    .line 117
    goto :goto_85

    .line 118
    :catchall_75
    move-exception p1

    .line 119
    goto/16 :goto_eb

    .line 121
    :cond_78
    instance-of v0, p2, Ll4/d;

    .line 123
    if-eqz v0, :cond_84

    .line 125
    move-object v0, p2

    .line 126
    check-cast v0, Ll4/d;

    .line 128
    invoke-virtual {v0}, Ll4/d;->e()Z

    .line 131
    move-result v0

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move v0, v8

    .line 134
    :goto_85
    if-eqz v0, :cond_a0

    .line 136
    instance-of v0, p2, Ll4/h;

    .line 138
    if-eqz v0, :cond_91

    .line 140
    move-object v0, p2

    .line 141
    check-cast v0, Ll4/h;

    .line 143
    iget v0, v0, Ll4/h;->d:I

    .line 145
    goto :goto_98

    .line 146
    :cond_91
    move-object v0, p2

    .line 147
    check-cast v0, Ll4/d;

    .line 149
    invoke-virtual {v0}, Ll4/d;->a()I

    .line 152
    move-result v0

    .line 153
    :goto_98
    iget-object v1, p1, Lm4/n;->d:Lm4/j;

    .line 155
    iput v0, v1, Lm4/j;->b:I

    .line 157
    add-int/2addr v0, v6

    .line 158
    iput v0, v1, Lm4/j;->d:I

    .line 160
    goto :goto_a6

    .line 161
    :cond_a0
    iget-object v0, p1, Lm4/n;->d:Lm4/j;

    .line 163
    iput v8, v0, Lm4/j;->b:I

    .line 165
    iput v6, v0, Lm4/j;->d:I

    .line 167
    :goto_a6
    invoke-static {p1, v5, v3, v4}, Lj4/a;->a(Lm4/n;IJ)Lm4/k;

    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p1, Lm4/n;->e:Lm4/k;

    .line 173
    iget-object v1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 175
    check-cast v1, Lj4/a;

    .line 177
    invoke-static {v0, v7, v1}, Lj4/a;->A(Lm4/k;Ljava/io/ByteArrayOutputStream;Lj4/a;)V

    .line 180
    iget-object v0, p1, Lm4/n;->d:Lm4/j;

    .line 182
    iget-object v1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 184
    check-cast v1, Lj4/a;

    .line 186
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 188
    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 191
    move-result-wide v8

    .line 192
    long-to-int v2, v8

    .line 193
    invoke-virtual {v1, v2, v7}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 196
    iget v2, v0, Lm4/j;->b:I

    .line 198
    invoke-virtual {v1, v2, v7}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 201
    iget-wide v8, v0, Lm4/j;->c:J

    .line 203
    invoke-virtual {v1, v8, v9, v7}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 206
    iget v0, v0, Lm4/j;->d:I

    .line 208
    invoke-virtual {v1, v0, v7}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 211
    :cond_d2
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 213
    move-object v6, v0

    .line 214
    check-cast v6, Lj4/a;

    .line 216
    move-object v0, p1

    .line 217
    move v1, v5

    .line 218
    move-wide v2, v3

    .line 219
    move-object v4, v7

    .line 220
    move-object v5, v6

    .line 221
    move-object v6, p3

    .line 222
    invoke-static/range {v0 .. v6}, Lj4/a;->u(Lm4/n;IJLjava/io/ByteArrayOutputStream;Lj4/a;Ljava/nio/charset/Charset;)V

    .line 225
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p0, p1, p2, v0, p3}, Lj4/a;->B(Lm4/n;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_e7
    .catchall {:try_start_9 .. :try_end_e7} :catchall_75

    .line 232
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 235
    return-void

    .line 236
    :goto_eb
    :try_start_eb
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_ef

    .line 239
    goto :goto_f3

    .line 240
    :catchall_ef
    move-exception p2

    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 244
    :goto_f3
    throw p1

    .line 245
    :cond_f4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 247
    const-string p2, "input parameters is null, cannot finalize zip file"

    .line 249
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 252
    throw p1
.end method

.method public final d(I[B)Ljava/util/ArrayList;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    if-ge v2, p1, :cond_3b

    .line 10
    new-instance v3, Lm4/f;

    .line 12
    invoke-direct {v3}, Lm4/f;-><init>()V

    .line 15
    iget-object v4, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 17
    check-cast v4, Lj4/a;

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v2, p2}, Lj4/a;->o(I[B)I

    .line 25
    move-result v4

    .line 26
    int-to-long v4, v4

    .line 27
    iput-wide v4, v3, Lm4/f;->b:J

    .line 29
    add-int/lit8 v2, v2, 0x2

    .line 31
    iget-object v4, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 33
    check-cast v4, Lj4/a;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {v2, p2}, Lj4/a;->o(I[B)I

    .line 41
    move-result v4

    .line 42
    iput v4, v3, Lm4/f;->c:I

    .line 44
    add-int/lit8 v2, v2, 0x2

    .line 46
    if-lez v4, :cond_36

    .line 48
    new-array v5, v4, [B

    .line 50
    invoke-static {p2, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iput-object v5, v3, Lm4/f;->d:[B

    .line 55
    :cond_36
    add-int/2addr v2, v4

    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_7

    .line 60
    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result p1

    .line 64
    if-lez p1, :cond_42

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    const/4 v0, 0x0

    .line 68
    :goto_43
    return-object v0
.end method

.method public final g(Ljava/io/RandomAccessFile;Lm4/i;)Lm4/n;
    .registers 29

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    .line 10
    move-result-wide v3

    .line 11
    const-wide/16 v5, 0x0

    .line 13
    cmp-long v3, v3, v5

    .line 15
    if-nez v3, :cond_16

    .line 17
    new-instance v0, Lm4/n;

    .line 19
    invoke-direct {v0}, Lm4/n;-><init>()V

    .line 22
    return-object v0

    .line 23
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    .line 26
    move-result-wide v3

    .line 27
    const-wide/16 v7, 0x16

    .line 29
    cmp-long v3, v3, v7

    .line 31
    if-ltz v3, :cond_38c

    .line 33
    new-instance v3, Lm4/n;

    .line 35
    invoke-direct {v3}, Lm4/n;-><init>()V

    .line 38
    iput-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 40
    :try_start_27
    iget-object v4, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 42
    check-cast v4, Lj4/a;

    .line 44
    invoke-virtual {v1, v0, v4, v2}, Lj4/a;->h(Ljava/io/RandomAccessFile;Lj4/a;Lm4/i;)Lm4/d;

    .line 47
    move-result-object v4

    .line 48
    iput-object v4, v3, Lm4/n;->c:Lm4/d;
    :try_end_31
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_27 .. :try_end_31} :catch_38a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_37e

    .line 50
    iget-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 52
    check-cast v3, Lm4/n;

    .line 54
    iget-object v4, v3, Lm4/n;->c:Lm4/d;

    .line 56
    iget v7, v4, Lm4/d;->e:I

    .line 58
    if-nez v7, :cond_3c

    .line 60
    return-object v3

    .line 61
    :cond_3c
    iget-object v7, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 63
    check-cast v7, Lj4/a;

    .line 65
    iget-wide v8, v4, Lm4/d;->g:J

    .line 67
    new-instance v4, Lm4/j;

    .line 69
    invoke-direct {v4}, Lm4/j;-><init>()V

    .line 72
    const-wide/16 v10, 0x4

    .line 74
    sub-long/2addr v8, v10

    .line 75
    const-wide/16 v12, 0x8

    .line 77
    sub-long/2addr v8, v12

    .line 78
    sub-long/2addr v8, v10

    .line 79
    sub-long/2addr v8, v10

    .line 80
    invoke-static {v8, v9, v0}, Lj4/a;->s(JLjava/io/RandomAccessFile;)V

    .line 83
    invoke-virtual {v7, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 86
    move-result v8

    .line 87
    int-to-long v8, v8

    .line 88
    sget-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 90
    invoke-virtual {v10}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 93
    move-result-wide v11

    .line 94
    cmp-long v8, v8, v11

    .line 96
    const/4 v9, 0x0

    .line 97
    const/4 v11, 0x1

    .line 98
    if-nez v8, :cond_7e

    .line 100
    iget-object v8, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 102
    check-cast v8, Lm4/n;

    .line 104
    iput-boolean v11, v8, Lm4/n;->i:Z

    .line 106
    iput-object v10, v4, Lm4/m;->a:Ljava/lang/Object;

    .line 108
    invoke-virtual {v7, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 111
    move-result v8

    .line 112
    iput v8, v4, Lm4/j;->b:I

    .line 114
    invoke-virtual {v7, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    .line 117
    move-result-wide v12

    .line 118
    iput-wide v12, v4, Lm4/j;->c:J

    .line 120
    invoke-virtual {v7, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 123
    move-result v7

    .line 124
    iput v7, v4, Lm4/j;->d:I

    .line 126
    goto :goto_85

    .line 127
    :cond_7e
    iget-object v4, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 129
    check-cast v4, Lm4/n;

    .line 131
    iput-boolean v9, v4, Lm4/n;->i:Z

    .line 133
    const/4 v4, 0x0

    .line 134
    :goto_85
    iput-object v4, v3, Lm4/n;->d:Lm4/j;

    .line 136
    iget-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 138
    check-cast v3, Lm4/n;

    .line 140
    iget-boolean v4, v3, Lm4/n;->i:Z

    .line 142
    if-eqz v4, :cond_127

    .line 144
    iget-object v4, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 146
    check-cast v4, Lj4/a;

    .line 148
    iget-object v7, v3, Lm4/n;->d:Lm4/j;

    .line 150
    if-eqz v7, :cond_11f

    .line 152
    iget-wide v7, v7, Lm4/j;->c:J

    .line 154
    cmp-long v10, v7, v5

    .line 156
    if-ltz v10, :cond_117

    .line 158
    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 161
    new-instance v7, Lm4/k;

    .line 163
    invoke-direct {v7}, Lm4/k;-><init>()V

    .line 166
    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 169
    move-result v8

    .line 170
    int-to-long v12, v8

    .line 171
    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 173
    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 176
    move-result-wide v14

    .line 177
    cmp-long v10, v12, v14

    .line 179
    if-nez v10, :cond_10f

    .line 181
    iput-object v8, v7, Lm4/m;->a:Ljava/lang/Object;

    .line 183
    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    .line 186
    move-result-wide v12

    .line 187
    iput-wide v12, v7, Lm4/k;->b:J

    .line 189
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 192
    move-result v8

    .line 193
    iput v8, v7, Lm4/k;->c:I

    .line 195
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 198
    move-result v8

    .line 199
    iput v8, v7, Lm4/k;->d:I

    .line 201
    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 204
    move-result v8

    .line 205
    iput v8, v7, Lm4/k;->e:I

    .line 207
    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 210
    move-result v8

    .line 211
    iput v8, v7, Lm4/k;->f:I

    .line 213
    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    .line 216
    move-result-wide v12

    .line 217
    iput-wide v12, v7, Lm4/k;->g:J

    .line 219
    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    .line 222
    move-result-wide v12

    .line 223
    iput-wide v12, v7, Lm4/k;->h:J

    .line 225
    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    .line 228
    move-result-wide v12

    .line 229
    iput-wide v12, v7, Lm4/k;->i:J

    .line 231
    invoke-virtual {v4, v0}, Lj4/a;->n(Ljava/io/RandomAccessFile;)J

    .line 234
    move-result-wide v12

    .line 235
    iput-wide v12, v7, Lm4/k;->j:J

    .line 237
    iget-wide v12, v7, Lm4/k;->b:J

    .line 239
    const-wide/16 v14, 0x2c

    .line 241
    sub-long/2addr v12, v14

    .line 242
    cmp-long v4, v12, v5

    .line 244
    if-lez v4, :cond_fb

    .line 246
    long-to-int v4, v12

    .line 247
    new-array v4, v4, [B

    .line 249
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 252
    :cond_fb
    iput-object v7, v3, Lm4/n;->e:Lm4/k;

    .line 254
    iget-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 256
    check-cast v3, Lm4/n;

    .line 258
    iget-object v4, v3, Lm4/n;->e:Lm4/k;

    .line 260
    if-eqz v4, :cond_10c

    .line 262
    iget v4, v4, Lm4/k;->e:I

    .line 264
    if-lez v4, :cond_10c

    .line 266
    iput-boolean v11, v3, Lm4/n;->f:Z

    .line 268
    goto :goto_127

    .line 269
    :cond_10c
    iput-boolean v9, v3, Lm4/n;->f:Z

    .line 271
    goto :goto_127

    .line 272
    :cond_10f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 274
    const-string v2, "invalid signature for zip64 end of central directory record"

    .line 276
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 279
    throw v0

    .line 280
    :cond_117
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 282
    const-string v2, "invalid offset for start of end of central directory record"

    .line 284
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 287
    throw v0

    .line 288
    :cond_11f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 290
    const-string v2, "invalid zip64 end of central directory locator"

    .line 292
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 295
    throw v0

    .line 296
    :cond_127
    :goto_127
    iget-object v3, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 298
    check-cast v3, Lm4/n;

    .line 300
    iget-object v4, v1, Lj4/a;->a:Ljava/lang/Object;

    .line 302
    check-cast v4, Lj4/a;

    .line 304
    iget-object v2, v2, Lm4/i;->a:Ljava/nio/charset/Charset;

    .line 306
    new-instance v5, Lo1/a;

    .line 308
    const/4 v6, 0x4

    .line 309
    invoke-direct {v5, v6}, Lo1/a;-><init>(I)V

    .line 312
    new-instance v7, Ljava/util/ArrayList;

    .line 314
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v8, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 319
    move-object v10, v8

    .line 320
    check-cast v10, Lm4/n;

    .line 322
    iget-boolean v11, v10, Lm4/n;->i:Z

    .line 324
    if-eqz v11, :cond_14a

    .line 326
    iget-object v10, v10, Lm4/n;->e:Lm4/k;

    .line 328
    iget-wide v10, v10, Lm4/k;->j:J

    .line 330
    goto :goto_14e

    .line 331
    :cond_14a
    iget-object v10, v10, Lm4/n;->c:Lm4/d;

    .line 333
    iget-wide v10, v10, Lm4/d;->f:J

    .line 335
    :goto_14e
    check-cast v8, Lm4/n;

    .line 337
    iget-boolean v12, v8, Lm4/n;->i:Z

    .line 339
    if-eqz v12, :cond_159

    .line 341
    iget-object v8, v8, Lm4/n;->e:Lm4/k;

    .line 343
    iget-wide v12, v8, Lm4/k;->h:J

    .line 345
    goto :goto_15e

    .line 346
    :cond_159
    iget-object v8, v8, Lm4/n;->c:Lm4/d;

    .line 348
    iget v8, v8, Lm4/d;->e:I

    .line 350
    int-to-long v12, v8

    .line 351
    :goto_15e
    move-wide/from16 v19, v12

    .line 353
    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 356
    const/4 v8, 0x2

    .line 357
    new-array v14, v8, [B

    .line 359
    new-array v6, v6, [B

    .line 361
    move v10, v9

    .line 362
    :goto_169
    int-to-long v11, v9

    .line 363
    cmp-long v11, v11, v19

    .line 365
    if-gez v11, :cond_34e

    .line 367
    new-instance v15, Lm4/g;

    .line 369
    invoke-direct {v15}, Lm4/g;-><init>()V

    .line 372
    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 375
    move-result v11

    .line 376
    int-to-long v11, v11

    .line 377
    sget-object v13, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 379
    invoke-virtual {v13}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 382
    move-result-wide v16

    .line 383
    cmp-long v11, v11, v16

    .line 385
    if-nez v11, :cond_332

    .line 387
    iput-object v13, v15, Lm4/m;->a:Ljava/lang/Object;

    .line 389
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 392
    move-result v11

    .line 393
    iput v11, v15, Lm4/g;->t:I

    .line 395
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 398
    move-result v11

    .line 399
    iput v11, v15, Lm4/b;->b:I

    .line 401
    new-array v8, v8, [B

    .line 403
    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 406
    aget-byte v11, v8, v10

    .line 408
    invoke-static {v10, v11}, La/b;->J(IB)Z

    .line 411
    move-result v11

    .line 412
    iput-boolean v11, v15, Lm4/b;->l:Z

    .line 414
    aget-byte v11, v8, v10

    .line 416
    const/4 v12, 0x3

    .line 417
    invoke-static {v12, v11}, La/b;->J(IB)Z

    .line 420
    move-result v11

    .line 421
    iput-boolean v11, v15, Lm4/b;->n:Z

    .line 423
    const/4 v11, 0x1

    .line 424
    aget-byte v11, v8, v11

    .line 426
    invoke-static {v12, v11}, La/b;->J(IB)Z

    .line 429
    move-result v11

    .line 430
    iput-boolean v11, v15, Lm4/b;->q:Z

    .line 432
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    .line 435
    move-result-object v8

    .line 436
    check-cast v8, [B

    .line 438
    iput-object v8, v15, Lm4/b;->c:[B

    .line 440
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 443
    move-result v8

    .line 444
    invoke-static {v8}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 447
    move-result-object v8

    .line 448
    iput-object v8, v15, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 450
    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 453
    move-result v8

    .line 454
    int-to-long v12, v8

    .line 455
    iput-wide v12, v15, Lm4/b;->e:J

    .line 457
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 460
    invoke-virtual {v4, v10, v6}, Lj4/a;->m(I[B)J

    .line 463
    move-result-wide v11

    .line 464
    iput-wide v11, v15, Lm4/b;->f:J

    .line 466
    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    .line 468
    check-cast v8, [B

    .line 470
    invoke-static {v8, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 473
    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    .line 475
    check-cast v8, [B

    .line 477
    const/4 v11, 0x4

    .line 478
    invoke-virtual {v0, v8, v10, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 481
    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    .line 483
    check-cast v8, [B

    .line 485
    invoke-virtual {v4, v10, v8}, Lj4/a;->m(I[B)J

    .line 488
    move-result-wide v11

    .line 489
    iput-wide v11, v15, Lm4/b;->g:J

    .line 491
    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    .line 493
    check-cast v8, [B

    .line 495
    invoke-static {v8, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 498
    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    .line 500
    check-cast v8, [B

    .line 502
    const/4 v11, 0x4

    .line 503
    invoke-virtual {v0, v8, v10, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 506
    iget-object v8, v4, Lj4/a;->a:Ljava/lang/Object;

    .line 508
    check-cast v8, [B

    .line 510
    invoke-virtual {v4, v10, v8}, Lj4/a;->m(I[B)J

    .line 513
    move-result-wide v11

    .line 514
    iput-wide v11, v15, Lm4/b;->h:J

    .line 516
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 519
    move-result v8

    .line 520
    iput v8, v15, Lm4/b;->i:I

    .line 522
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 525
    move-result v11

    .line 526
    iput v11, v15, Lm4/b;->j:I

    .line 528
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 531
    move-result v12

    .line 532
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 535
    move-result v11

    .line 536
    iput v11, v15, Lm4/g;->u:I

    .line 538
    invoke-virtual {v0, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 541
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 544
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    .line 547
    move-result-object v11

    .line 548
    check-cast v11, [B

    .line 550
    iput-object v11, v15, Lm4/g;->v:[B

    .line 552
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 555
    move v13, v12

    .line 556
    invoke-virtual {v4, v10, v6}, Lj4/a;->m(I[B)J

    .line 559
    move-result-wide v11

    .line 560
    iput-wide v11, v15, Lm4/g;->w:J

    .line 562
    if-lez v8, :cond_32a

    .line 564
    new-array v8, v8, [B

    .line 566
    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 569
    iget-boolean v11, v15, Lm4/b;->q:Z

    .line 571
    invoke-static {v8, v11, v2}, La/b;->t([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 574
    move-result-object v8

    .line 575
    iput-object v8, v15, Lm4/b;->k:Ljava/lang/String;

    .line 577
    iget-object v11, v15, Lm4/g;->v:[B

    .line 579
    aget-byte v12, v11, v10

    .line 581
    move-object/from16 v21, v6

    .line 583
    if-eqz v12, :cond_250

    .line 585
    const/4 v6, 0x4

    .line 586
    invoke-static {v6, v12}, La/b;->J(IB)Z

    .line 589
    move-result v6

    .line 590
    if-eqz v6, :cond_250

    .line 592
    goto :goto_26d

    .line 593
    :cond_250
    const/4 v6, 0x3

    .line 594
    aget-byte v6, v11, v6

    .line 596
    if-eqz v6, :cond_25d

    .line 598
    const/4 v11, 0x6

    .line 599
    invoke-static {v11, v6}, La/b;->J(IB)Z

    .line 602
    move-result v6

    .line 603
    if-eqz v6, :cond_25d

    .line 605
    goto :goto_26d

    .line 606
    :cond_25d
    const-string v6, "/"

    .line 608
    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 611
    move-result v6

    .line 612
    if-nez v6, :cond_26d

    .line 614
    const-string v6, "\\"

    .line 616
    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 619
    move-result v6

    .line 620
    if-eqz v6, :cond_26e

    .line 622
    :cond_26d
    :goto_26d
    const/4 v10, 0x1

    .line 623
    :cond_26e
    iput-boolean v10, v15, Lm4/b;->s:Z

    .line 625
    iget v6, v15, Lm4/b;->j:I

    .line 627
    const/4 v8, 0x4

    .line 628
    if-gtz v6, :cond_276

    .line 630
    goto :goto_28f

    .line 631
    :cond_276
    if-ge v6, v8, :cond_27f

    .line 633
    if-lez v6, :cond_27d

    .line 635
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 638
    :cond_27d
    const/4 v6, 0x0

    .line 639
    goto :goto_28d

    .line 640
    :cond_27f
    new-array v8, v6, [B

    .line 642
    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    .line 645
    :try_start_284
    invoke-virtual {v1, v6, v8}, Lj4/a;->d(I[B)Ljava/util/ArrayList;

    .line 648
    move-result-object v6
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_288} :catch_289

    .line 649
    goto :goto_28d

    .line 650
    :catch_289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 653
    move-result-object v6

    .line 654
    :goto_28d
    iput-object v6, v15, Lm4/b;->r:Ljava/util/List;

    .line 656
    :goto_28f
    iget-object v6, v15, Lm4/b;->r:Ljava/util/List;

    .line 658
    if-eqz v6, :cond_2e5

    .line 660
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 663
    move-result v6

    .line 664
    if-gtz v6, :cond_29a

    .line 666
    goto :goto_2e5

    .line 667
    :cond_29a
    iget-object v10, v15, Lm4/b;->r:Ljava/util/List;

    .line 669
    iget-wide v11, v15, Lm4/b;->h:J

    .line 671
    move-object/from16 p2, v5

    .line 673
    iget-wide v5, v15, Lm4/b;->g:J

    .line 675
    move/from16 v22, v9

    .line 677
    iget-wide v8, v15, Lm4/g;->w:J

    .line 679
    iget v1, v15, Lm4/g;->u:I

    .line 681
    move-wide/from16 v16, v11

    .line 683
    move-object v11, v4

    .line 684
    move-object/from16 v23, v3

    .line 686
    move v3, v13

    .line 687
    move-wide/from16 v12, v16

    .line 689
    move-object/from16 v25, v7

    .line 691
    move-object/from16 v24, v14

    .line 693
    move-object v7, v15

    .line 694
    move-wide v14, v5

    .line 695
    move-wide/from16 v16, v8

    .line 697
    move/from16 v18, v1

    .line 699
    invoke-static/range {v10 .. v18}, Lj4/a;->r(Ljava/util/List;Lj4/a;JJJI)Lm4/l;

    .line 702
    move-result-object v1

    .line 703
    if-nez v1, :cond_2c1

    .line 705
    goto :goto_2f1

    .line 706
    :cond_2c1
    iput-object v1, v7, Lm4/b;->o:Lm4/l;

    .line 708
    iget-wide v5, v1, Lm4/l;->c:J

    .line 710
    const-wide/16 v8, -0x1

    .line 712
    cmp-long v10, v5, v8

    .line 714
    if-eqz v10, :cond_2cd

    .line 716
    iput-wide v5, v7, Lm4/b;->h:J

    .line 718
    :cond_2cd
    iget-wide v5, v1, Lm4/l;->b:J

    .line 720
    cmp-long v10, v5, v8

    .line 722
    if-eqz v10, :cond_2d5

    .line 724
    iput-wide v5, v7, Lm4/b;->g:J

    .line 726
    :cond_2d5
    iget-wide v5, v1, Lm4/l;->d:J

    .line 728
    cmp-long v8, v5, v8

    .line 730
    if-eqz v8, :cond_2dd

    .line 732
    iput-wide v5, v7, Lm4/g;->w:J

    .line 734
    :cond_2dd
    iget v1, v1, Lm4/l;->e:I

    .line 736
    const/4 v5, -0x1

    .line 737
    if-eq v1, v5, :cond_2f1

    .line 739
    iput v1, v7, Lm4/g;->u:I

    .line 741
    goto :goto_2f1

    .line 742
    :cond_2e5
    :goto_2e5
    move-object/from16 v23, v3

    .line 744
    move-object/from16 p2, v5

    .line 746
    move-object/from16 v25, v7

    .line 748
    move/from16 v22, v9

    .line 750
    move v3, v13

    .line 751
    move-object/from16 v24, v14

    .line 753
    move-object v7, v15

    .line 754
    :cond_2f1
    :goto_2f1
    invoke-static {v7, v4}, Lj4/a;->f(Lm4/b;Lj4/a;)V

    .line 757
    if-lez v3, :cond_303

    .line 759
    new-array v1, v3, [B

    .line 761
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 764
    iget-boolean v3, v7, Lm4/b;->q:Z

    .line 766
    invoke-static {v1, v3, v2}, La/b;->t([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 769
    move-result-object v1

    .line 770
    iput-object v1, v7, Lm4/g;->x:Ljava/lang/String;

    .line 772
    :cond_303
    iget-boolean v1, v7, Lm4/b;->l:Z

    .line 774
    if-eqz v1, :cond_314

    .line 776
    iget-object v1, v7, Lm4/b;->p:Lm4/a;

    .line 778
    if-eqz v1, :cond_310

    .line 780
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 782
    iput-object v1, v7, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 784
    goto :goto_314

    .line 785
    :cond_310
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 787
    iput-object v1, v7, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 789
    :cond_314
    :goto_314
    move-object/from16 v1, v25

    .line 791
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    add-int/lit8 v9, v22, 0x1

    .line 796
    const/4 v8, 0x2

    .line 797
    const/4 v10, 0x0

    .line 798
    move-object/from16 v5, p2

    .line 800
    move-object v7, v1

    .line 801
    move-object/from16 v6, v21

    .line 803
    move-object/from16 v3, v23

    .line 805
    move-object/from16 v14, v24

    .line 807
    move-object/from16 v1, p0

    .line 809
    goto/16 :goto_169

    .line 811
    :cond_32a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 813
    const-string v1, "Invalid entry name in file header"

    .line 815
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 818
    throw v0

    .line 819
    :cond_332
    move/from16 v22, v9

    .line 821
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 823
    const-string v1, "Expected central directory entry not found (#"

    .line 825
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    move-result-object v1

    .line 829
    add-int/lit8 v9, v22, 0x1

    .line 831
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 834
    const-string v2, ")"

    .line 836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    move-result-object v1

    .line 843
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 846
    throw v0

    .line 847
    :cond_34e
    move-object/from16 v23, v3

    .line 849
    move-object v2, v5

    .line 850
    move-object v1, v7

    .line 851
    iput-object v1, v2, Lo1/a;->b:Ljava/lang/Object;

    .line 853
    invoke-virtual {v4, v0}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 856
    move-result v1

    .line 857
    int-to-long v5, v1

    .line 858
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 860
    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 863
    move-result-wide v7

    .line 864
    cmp-long v1, v5, v7

    .line 866
    if-nez v1, :cond_373

    .line 868
    invoke-virtual {v4, v0}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 871
    move-result v1

    .line 872
    if-lez v1, :cond_373

    .line 874
    new-array v1, v1, [B

    .line 876
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 879
    new-instance v0, Ljava/lang/String;

    .line 881
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 884
    :cond_373
    move-object/from16 v3, v23

    .line 886
    iput-object v2, v3, Lm4/n;->b:Lo1/a;

    .line 888
    move-object/from16 v1, p0

    .line 890
    iget-object v0, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 892
    check-cast v0, Lm4/n;

    .line 894
    return-object v0

    .line 895
    :catch_37e
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 899
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 901
    const-string v3, "Zip headers not found. Probably not a zip file or a corrupted zip file"

    .line 903
    invoke-direct {v2, v3, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 906
    throw v2

    .line 907
    :catch_38a
    move-exception v0

    .line 908
    throw v0

    .line 909
    :cond_38c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 911
    const-string v2, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    .line 913
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 916
    throw v0
.end method

.method public final h(Ljava/io/RandomAccessFile;Lj4/a;Lm4/i;)Lm4/d;
    .registers 14

    .line 1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x16

    .line 7
    cmp-long v4, v0, v2

    .line 9
    if-ltz v4, :cond_c6

    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-static {v0, v1, p1}, Lj4/a;->s(JLjava/io/RandomAccessFile;)V

    .line 15
    iget-object v4, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 17
    check-cast v4, Lj4/a;

    .line 19
    invoke-virtual {v4, p1}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 22
    move-result v4

    .line 23
    int-to-long v4, v4

    .line 24
    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 26
    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 29
    move-result-wide v6

    .line 30
    cmp-long v4, v4, v6

    .line 32
    if-nez v4, :cond_22

    .line 34
    goto :goto_59

    .line 35
    :cond_22
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 38
    move-result-wide v0

    .line 39
    sub-long/2addr v0, v2

    .line 40
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 43
    move-result-wide v2

    .line 44
    const-wide/32 v4, 0x10000

    .line 47
    cmp-long v2, v2, v4

    .line 49
    if-gez v2, :cond_36

    .line 51
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 54
    move-result-wide v4

    .line 55
    :cond_36
    :goto_36
    const-wide/16 v2, 0x0

    .line 57
    cmp-long v6, v4, v2

    .line 59
    if-lez v6, :cond_be

    .line 61
    cmp-long v2, v0, v2

    .line 63
    if-lez v2, :cond_be

    .line 65
    const-wide/16 v2, 0x1

    .line 67
    sub-long/2addr v0, v2

    .line 68
    invoke-static {v0, v1, p1}, Lj4/a;->s(JLjava/io/RandomAccessFile;)V

    .line 71
    iget-object v6, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 73
    check-cast v6, Lj4/a;

    .line 75
    invoke-virtual {v6, p1}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 78
    move-result v6

    .line 79
    int-to-long v6, v6

    .line 80
    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 82
    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 85
    move-result-wide v8

    .line 86
    cmp-long v6, v6, v8

    .line 88
    if-nez v6, :cond_bb

    .line 90
    :goto_59
    const-wide/16 v2, 0x4

    .line 92
    add-long/2addr v2, v0

    .line 93
    invoke-static {v2, v3, p1}, Lj4/a;->s(JLjava/io/RandomAccessFile;)V

    .line 96
    new-instance v2, Lm4/d;

    .line 98
    invoke-direct {v2}, Lm4/d;-><init>()V

    .line 101
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 103
    iput-object v3, v2, Lm4/m;->a:Ljava/lang/Object;

    .line 105
    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 108
    move-result v3

    .line 109
    iput v3, v2, Lm4/d;->b:I

    .line 111
    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 114
    move-result v3

    .line 115
    iput v3, v2, Lm4/d;->c:I

    .line 117
    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 120
    move-result v3

    .line 121
    iput v3, v2, Lm4/d;->d:I

    .line 123
    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 126
    move-result v3

    .line 127
    iput v3, v2, Lm4/d;->e:I

    .line 129
    invoke-virtual {p2, p1}, Lj4/a;->k(Ljava/io/RandomAccessFile;)I

    .line 132
    iput-wide v0, v2, Lm4/d;->g:J

    .line 134
    iget-object v0, p0, Lj4/a;->b:[B

    .line 136
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 139
    iget-object v0, p0, Lj4/a;->b:[B

    .line 141
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p2, v1, v0}, Lj4/a;->m(I[B)J

    .line 145
    move-result-wide v3

    .line 146
    iput-wide v3, v2, Lm4/d;->f:J

    .line 148
    invoke-virtual {p2, p1}, Lj4/a;->q(Ljava/io/RandomAccessFile;)I

    .line 151
    move-result p2

    .line 152
    iget-object p3, p3, Lm4/i;->a:Ljava/nio/charset/Charset;

    .line 154
    const/4 v0, 0x0

    .line 155
    if-gtz p2, :cond_9d

    .line 157
    goto :goto_ab

    .line 158
    :cond_9d
    :try_start_9d
    new-array p2, p2, [B

    .line 160
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 163
    if-eqz p3, :cond_a5

    .line 165
    goto :goto_a7

    .line 166
    :cond_a5
    sget-object p3, Lo4/b;->c:Ljava/nio/charset/Charset;

    .line 168
    :goto_a7
    invoke-static {p2, v1, p3}, La/b;->t([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 171
    move-result-object v0
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_ab} :catch_ab

    .line 172
    :catch_ab
    :goto_ab
    if-eqz v0, :cond_af

    .line 174
    iput-object v0, v2, Lm4/d;->h:Ljava/lang/String;

    .line 176
    :cond_af
    iget-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 178
    check-cast p1, Lm4/n;

    .line 180
    iget p2, v2, Lm4/d;->b:I

    .line 182
    if-lez p2, :cond_b8

    .line 184
    const/4 v1, 0x1

    .line 185
    :cond_b8
    iput-boolean v1, p1, Lm4/n;->f:Z

    .line 187
    return-object v2

    .line 188
    :cond_bb
    sub-long/2addr v4, v2

    .line 189
    goto/16 :goto_36

    .line 191
    :cond_be
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 193
    const-string p2, "Zip headers not found. Probably not a zip file"

    .line 195
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 198
    throw p1

    .line 199
    :cond_c6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 201
    const-string p2, "Zip file size less than size of zip headers. Probably not a zip file."

    .line 203
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 206
    throw p1
.end method

.method public final j(Ljava/io/PushbackInputStream;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 3
    check-cast v0, [B

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {p1, v0, v1}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    .line 9
    iget-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 11
    check-cast p1, [B

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Lj4/a;->l([BI)I

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final k(Ljava/io/RandomAccessFile;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 3
    check-cast v0, [B

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 8
    iget-object p1, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 10
    check-cast p1, [B

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lj4/a;->l([BI)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final m(I[B)J
    .registers 8

    .line 1
    array-length v0, p2

    .line 2
    sub-int/2addr v0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 6
    if-ge v0, v2, :cond_e

    .line 8
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 10
    check-cast v0, [B

    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 15
    :cond_e
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 17
    check-cast v0, [B

    .line 19
    array-length v3, p2

    .line 20
    sub-int/2addr v3, p1

    .line 21
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result v3

    .line 25
    invoke-static {p2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    const-wide/16 p1, 0x0

    .line 30
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 32
    move-object v3, v0

    .line 33
    check-cast v3, [B

    .line 35
    const/4 v4, 0x7

    .line 36
    aget-byte v3, v3, v4

    .line 38
    and-int/lit16 v3, v3, 0xff

    .line 40
    int-to-long v3, v3

    .line 41
    or-long/2addr p1, v3

    .line 42
    shl-long/2addr p1, v2

    .line 43
    move-object v3, v0

    .line 44
    check-cast v3, [B

    .line 46
    const/4 v4, 0x6

    .line 47
    aget-byte v3, v3, v4

    .line 49
    and-int/lit16 v3, v3, 0xff

    .line 51
    int-to-long v3, v3

    .line 52
    or-long/2addr p1, v3

    .line 53
    shl-long/2addr p1, v2

    .line 54
    move-object v3, v0

    .line 55
    check-cast v3, [B

    .line 57
    const/4 v4, 0x5

    .line 58
    aget-byte v3, v3, v4

    .line 60
    and-int/lit16 v3, v3, 0xff

    .line 62
    int-to-long v3, v3

    .line 63
    or-long/2addr p1, v3

    .line 64
    shl-long/2addr p1, v2

    .line 65
    move-object v3, v0

    .line 66
    check-cast v3, [B

    .line 68
    const/4 v4, 0x4

    .line 69
    aget-byte v3, v3, v4

    .line 71
    and-int/lit16 v3, v3, 0xff

    .line 73
    int-to-long v3, v3

    .line 74
    or-long/2addr p1, v3

    .line 75
    shl-long/2addr p1, v2

    .line 76
    move-object v3, v0

    .line 77
    check-cast v3, [B

    .line 79
    const/4 v4, 0x3

    .line 80
    aget-byte v3, v3, v4

    .line 82
    and-int/lit16 v3, v3, 0xff

    .line 84
    int-to-long v3, v3

    .line 85
    or-long/2addr p1, v3

    .line 86
    shl-long/2addr p1, v2

    .line 87
    move-object v3, v0

    .line 88
    check-cast v3, [B

    .line 90
    const/4 v4, 0x2

    .line 91
    aget-byte v3, v3, v4

    .line 93
    and-int/lit16 v3, v3, 0xff

    .line 95
    int-to-long v3, v3

    .line 96
    or-long/2addr p1, v3

    .line 97
    shl-long/2addr p1, v2

    .line 98
    move-object v3, v0

    .line 99
    check-cast v3, [B

    .line 101
    const/4 v4, 0x1

    .line 102
    aget-byte v3, v3, v4

    .line 104
    and-int/lit16 v3, v3, 0xff

    .line 106
    int-to-long v3, v3

    .line 107
    or-long/2addr p1, v3

    .line 108
    shl-long/2addr p1, v2

    .line 109
    check-cast v0, [B

    .line 111
    aget-byte v0, v0, v1

    .line 113
    and-int/lit16 v0, v0, 0xff

    .line 115
    int-to-long v0, v0

    .line 116
    or-long/2addr p1, v0

    .line 117
    return-wide p1
.end method

.method public final n(Ljava/io/RandomAccessFile;)J
    .registers 4

    .line 1
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, [B

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 8
    iget-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 10
    check-cast p1, [B

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0, p1}, Lj4/a;->m(I[B)J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public final p(Ljava/io/PushbackInputStream;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lj4/a;->b:[B

    .line 3
    array-length v1, v0

    .line 4
    invoke-static {p1, v0, v1}, Lj4/a;->i(Ljava/io/PushbackInputStream;[BI)V

    .line 7
    iget-object p1, p0, Lj4/a;->b:[B

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0, p1}, Lj4/a;->o(I[B)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final q(Ljava/io/RandomAccessFile;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lj4/a;->b:[B

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 6
    iget-object p1, p0, Lj4/a;->b:[B

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0, p1}, Lj4/a;->o(I[B)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final t(Lm4/n;Ljava/io/ByteArrayOutputStream;Lj4/a;Ljava/nio/charset/Charset;)V
    .registers 25

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    iget-object v5, v0, Lm4/n;->b:Lo1/a;

    .line 13
    if-eqz v5, :cond_221

    .line 15
    iget-object v5, v5, Lo1/a;->b:Ljava/lang/Object;

    .line 17
    check-cast v5, Ljava/util/List;

    .line 19
    if-eqz v5, :cond_221

    .line 21
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 24
    move-result v5

    .line 25
    if-gtz v5, :cond_1c

    .line 27
    goto/16 :goto_221

    .line 29
    :cond_1c
    iget-object v5, v0, Lm4/n;->b:Lo1/a;

    .line 31
    iget-object v5, v5, Lo1/a;->b:Ljava/lang/Object;

    .line 33
    check-cast v5, Ljava/util/List;

    .line 35
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v5

    .line 39
    :cond_26
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_221

    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lm4/g;

    .line 51
    if-eqz v6, :cond_219

    .line 53
    const/4 v7, 0x2

    .line 54
    :try_start_35
    new-array v8, v7, [B

    .line 56
    const/4 v9, 0x0

    .line 57
    aput-byte v9, v8, v9

    .line 59
    const/4 v10, 0x1

    .line 60
    aput-byte v9, v8, v10

    .line 62
    iget-wide v11, v6, Lm4/b;->g:J

    .line 64
    const-wide v13, 0xffffffffL

    .line 69
    cmp-long v11, v11, v13

    .line 71
    const v12, 0xffff

    .line 74
    if-gez v11, :cond_5f

    .line 76
    move-object v15, v8

    .line 77
    iget-wide v7, v6, Lm4/b;->h:J

    .line 79
    cmp-long v7, v7, v13

    .line 81
    if-gez v7, :cond_60

    .line 83
    iget-wide v7, v6, Lm4/g;->w:J

    .line 85
    cmp-long v7, v7, v13

    .line 87
    if-gez v7, :cond_60

    .line 89
    iget v7, v6, Lm4/g;->u:I

    .line 91
    if-lt v7, v12, :cond_5d

    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    move v7, v9

    .line 95
    goto :goto_61

    .line 96
    :cond_5f
    move-object v15, v8

    .line 97
    :cond_60
    :goto_60
    move v7, v10

    .line 98
    :goto_61
    iget-object v8, v6, Lm4/m;->a:Ljava/lang/Object;

    .line 100
    check-cast v8, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 102
    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 105
    move-result-wide v11

    .line 106
    long-to-int v8, v11

    .line 107
    invoke-virtual {v3, v8, v2}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 110
    iget v8, v6, Lm4/g;->t:I

    .line 112
    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 115
    iget v8, v6, Lm4/b;->b:I

    .line 117
    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 120
    iget-object v8, v6, Lm4/b;->c:[B

    .line 122
    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 125
    iget-object v8, v6, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 127
    invoke-virtual {v8}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    .line 130
    move-result v8

    .line 131
    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 134
    iget-object v8, v1, Lj4/a;->b:[B

    .line 136
    iget-wide v11, v6, Lm4/b;->e:J

    .line 138
    invoke-static {v11, v12, v8}, Lj4/a;->x(J[B)V

    .line 141
    iget-object v8, v1, Lj4/a;->b:[B

    .line 143
    const/4 v11, 0x4

    .line 144
    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 147
    iget-object v8, v1, Lj4/a;->b:[B

    .line 149
    iget-wide v13, v6, Lm4/b;->f:J

    .line 151
    invoke-static {v13, v14, v8}, Lj4/a;->x(J[B)V

    .line 154
    iget-object v8, v1, Lj4/a;->b:[B

    .line 156
    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 159
    if-eqz v7, :cond_b7

    .line 161
    iget-object v8, v1, Lj4/a;->b:[B

    .line 163
    const-wide v12, 0xffffffffL

    .line 168
    invoke-static {v12, v13, v8}, Lj4/a;->x(J[B)V

    .line 171
    iget-object v8, v1, Lj4/a;->b:[B

    .line 173
    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 176
    iget-object v8, v1, Lj4/a;->b:[B

    .line 178
    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 181
    iput-boolean v10, v0, Lm4/n;->i:Z

    .line 183
    goto :goto_cf

    .line 184
    :cond_b7
    iget-object v8, v1, Lj4/a;->b:[B

    .line 186
    iget-wide v12, v6, Lm4/b;->g:J

    .line 188
    invoke-static {v12, v13, v8}, Lj4/a;->x(J[B)V

    .line 191
    iget-object v8, v1, Lj4/a;->b:[B

    .line 193
    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 196
    iget-object v8, v1, Lj4/a;->b:[B

    .line 198
    iget-wide v12, v6, Lm4/b;->h:J

    .line 200
    invoke-static {v12, v13, v8}, Lj4/a;->x(J[B)V

    .line 203
    iget-object v8, v1, Lj4/a;->b:[B

    .line 205
    invoke-virtual {v2, v8, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 208
    :goto_cf
    new-array v8, v9, [B

    .line 210
    iget-object v12, v6, Lm4/b;->k:Ljava/lang/String;

    .line 212
    invoke-static {v12}, La/b;->O(Ljava/lang/String;)Z

    .line 215
    move-result v12

    .line 216
    if-eqz v12, :cond_df

    .line 218
    iget-object v8, v6, Lm4/b;->k:Ljava/lang/String;

    .line 220
    invoke-static {v8, v4}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 223
    move-result-object v8

    .line 224
    :cond_df
    array-length v12, v8

    .line 225
    invoke-virtual {v3, v12, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 228
    new-array v12, v11, [B

    .line 230
    if-eqz v7, :cond_f9

    .line 232
    iget-object v13, v1, Lj4/a;->b:[B

    .line 234
    const-wide v9, 0xffffffffL

    .line 239
    invoke-static {v9, v10, v13}, Lj4/a;->x(J[B)V

    .line 242
    iget-object v9, v1, Lj4/a;->b:[B

    .line 244
    const/4 v10, 0x0

    .line 245
    invoke-static {v9, v10, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    move-object v10, v15

    .line 249
    goto :goto_107

    .line 250
    :cond_f9
    iget-object v9, v1, Lj4/a;->b:[B

    .line 252
    move-object v10, v15

    .line 253
    iget-wide v14, v6, Lm4/g;->w:J

    .line 255
    invoke-static {v14, v15, v9}, Lj4/a;->x(J[B)V

    .line 258
    iget-object v9, v1, Lj4/a;->b:[B

    .line 260
    const/4 v13, 0x0

    .line 261
    invoke-static {v9, v13, v12, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    :goto_107
    if-eqz v7, :cond_10c

    .line 266
    const/16 v9, 0x20

    .line 268
    goto :goto_10d

    .line 269
    :cond_10c
    const/4 v9, 0x0

    .line 270
    :goto_10d
    iget-object v13, v6, Lm4/b;->p:Lm4/a;

    .line 272
    if-eqz v13, :cond_113

    .line 274
    add-int/lit8 v9, v9, 0xb

    .line 276
    :cond_113
    iget-object v13, v6, Lm4/b;->r:Ljava/util/List;

    .line 278
    if-eqz v13, :cond_14d

    .line 280
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 283
    move-result-object v13

    .line 284
    :goto_11b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    move-result v15

    .line 288
    if-eqz v15, :cond_14d

    .line 290
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    move-result-object v15

    .line 294
    check-cast v15, Lm4/f;

    .line 296
    move-object/from16 v17, v12

    .line 298
    iget-wide v11, v15, Lm4/f;->b:J

    .line 300
    sget-object v18, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 302
    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 305
    move-result-wide v18

    .line 306
    cmp-long v11, v11, v18

    .line 308
    if-eqz v11, :cond_148

    .line 310
    iget-wide v11, v15, Lm4/f;->b:J

    .line 312
    sget-object v18, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 314
    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 317
    move-result-wide v18

    .line 318
    cmp-long v11, v11, v18

    .line 320
    if-nez v11, :cond_142

    .line 322
    goto :goto_148

    .line 323
    :cond_142
    iget v11, v15, Lm4/f;->c:I

    .line 325
    const/4 v12, 0x4

    .line 326
    add-int/2addr v11, v12

    .line 327
    add-int/2addr v9, v11

    .line 328
    goto :goto_149

    .line 329
    :cond_148
    :goto_148
    const/4 v12, 0x4

    .line 330
    :goto_149
    move v11, v12

    .line 331
    move-object/from16 v12, v17

    .line 333
    goto :goto_11b

    .line 334
    :cond_14d
    move-object/from16 v17, v12

    .line 336
    invoke-virtual {v3, v9, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 339
    iget-object v9, v6, Lm4/g;->x:Ljava/lang/String;

    .line 341
    const/4 v11, 0x0

    .line 342
    new-array v12, v11, [B

    .line 344
    invoke-static {v9}, La/b;->O(Ljava/lang/String;)Z

    .line 347
    move-result v11

    .line 348
    if-eqz v11, :cond_161

    .line 350
    invoke-static {v9, v4}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 353
    move-result-object v12

    .line 354
    :cond_161
    array-length v9, v12

    .line 355
    invoke-virtual {v3, v9, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 358
    if-eqz v7, :cond_186

    .line 360
    iget-object v9, v1, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 362
    move-object v13, v9

    .line 363
    check-cast v13, [B

    .line 365
    const/4 v14, 0x0

    .line 366
    int-to-byte v11, v14

    .line 367
    const/4 v15, 0x3

    .line 368
    aput-byte v11, v13, v15

    .line 370
    int-to-byte v11, v14

    .line 371
    const/4 v15, 0x2

    .line 372
    aput-byte v11, v13, v15

    .line 374
    const/16 v15, 0xff

    .line 376
    int-to-byte v11, v15

    .line 377
    const/16 v16, 0x1

    .line 379
    aput-byte v11, v13, v16

    .line 381
    int-to-byte v11, v15

    .line 382
    aput-byte v11, v13, v14

    .line 384
    check-cast v9, [B

    .line 386
    const/4 v11, 0x2

    .line 387
    invoke-virtual {v2, v9, v14, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 390
    goto :goto_18b

    .line 391
    :cond_186
    iget v9, v6, Lm4/g;->u:I

    .line 393
    invoke-virtual {v3, v9, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 396
    :goto_18b
    move-object v9, v10

    .line 397
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 400
    iget-object v9, v6, Lm4/g;->v:[B

    .line 402
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 405
    move-object/from16 v9, v17

    .line 407
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 410
    array-length v9, v8

    .line 411
    if-lez v9, :cond_19f

    .line 413
    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 416
    :cond_19f
    if-eqz v7, :cond_1c7

    .line 418
    const/4 v7, 0x1

    .line 419
    iput-boolean v7, v0, Lm4/n;->i:Z

    .line 421
    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 423
    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 426
    move-result-wide v7

    .line 427
    long-to-int v7, v7

    .line 428
    invoke-virtual {v3, v7, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 431
    const/16 v7, 0x1c

    .line 433
    invoke-virtual {v3, v7, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 436
    iget-wide v7, v6, Lm4/b;->h:J

    .line 438
    invoke-virtual {v3, v7, v8, v2}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 441
    iget-wide v7, v6, Lm4/b;->g:J

    .line 443
    invoke-virtual {v3, v7, v8, v2}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 446
    iget-wide v7, v6, Lm4/g;->w:J

    .line 448
    invoke-virtual {v3, v7, v8, v2}, Lj4/a;->w(JLjava/io/OutputStream;)V

    .line 451
    iget v7, v6, Lm4/g;->u:I

    .line 453
    invoke-virtual {v3, v7, v2}, Lj4/a;->v(ILjava/io/OutputStream;)V

    .line 456
    :cond_1c7
    iget-object v7, v6, Lm4/b;->p:Lm4/a;

    .line 458
    if-eqz v7, :cond_207

    .line 460
    iget-object v8, v7, Lm4/m;->a:Ljava/lang/Object;

    .line 462
    check-cast v8, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 464
    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 467
    move-result-wide v8

    .line 468
    long-to-int v8, v8

    .line 469
    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 472
    iget v8, v7, Lm4/a;->b:I

    .line 474
    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 477
    iget-object v8, v7, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 479
    invoke-virtual {v8}, Lnet/lingala/zip4j/model/enums/AesVersion;->getVersionNumber()I

    .line 482
    move-result v8

    .line 483
    invoke-virtual {v3, v8, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 486
    iget-object v8, v7, Lm4/a;->d:Ljava/lang/String;

    .line 488
    invoke-static {v8, v4}, La/b;->A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 491
    move-result-object v8

    .line 492
    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 495
    const/4 v8, 0x1

    .line 496
    new-array v8, v8, [B

    .line 498
    iget-object v9, v7, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 500
    invoke-virtual {v9}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    .line 503
    move-result v9

    .line 504
    int-to-byte v9, v9

    .line 505
    const/4 v10, 0x0

    .line 506
    aput-byte v9, v8, v10

    .line 508
    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 511
    iget-object v7, v7, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 513
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    .line 516
    move-result v7

    .line 517
    invoke-virtual {v3, v7, v2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 520
    :cond_207
    invoke-virtual {v1, v6, v2}, Lj4/a;->y(Lm4/g;Ljava/io/ByteArrayOutputStream;)V

    .line 523
    array-length v6, v12

    .line 524
    if-lez v6, :cond_26

    .line 526
    invoke-virtual {v2, v12}, Ljava/io/OutputStream;->write([B)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_210} :catch_212

    .line 529
    goto/16 :goto_26

    .line 531
    :catch_212
    move-exception v0

    .line 532
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 534
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 537
    throw v2

    .line 538
    :cond_219
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 540
    const-string v2, "input parameters is null, cannot write local file header"

    .line 542
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 545
    throw v0

    .line 546
    :cond_221
    :goto_221
    return-void
.end method

.method public final v(ILjava/io/OutputStream;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lj4/a;->c:Ljava/lang/Cloneable;

    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [B

    .line 6
    ushr-int/lit8 v2, p1, 0x18

    .line 8
    int-to-byte v2, v2

    .line 9
    const/4 v3, 0x3

    .line 10
    aput-byte v2, v1, v3

    .line 12
    ushr-int/lit8 v2, p1, 0x10

    .line 14
    int-to-byte v2, v2

    .line 15
    const/4 v3, 0x2

    .line 16
    aput-byte v2, v1, v3

    .line 18
    ushr-int/lit8 v2, p1, 0x8

    .line 20
    int-to-byte v2, v2

    .line 21
    const/4 v3, 0x1

    .line 22
    aput-byte v2, v1, v3

    .line 24
    and-int/lit16 p1, p1, 0xff

    .line 26
    int-to-byte p1, p1

    .line 27
    const/4 v2, 0x0

    .line 28
    aput-byte p1, v1, v2

    .line 30
    check-cast v0, [B

    .line 32
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 35
    return-void
.end method

.method public final w(JLjava/io/OutputStream;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, [B

    .line 5
    invoke-static {p1, p2, v0}, Lj4/a;->x(J[B)V

    .line 8
    iget-object p1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 10
    check-cast p1, [B

    .line 12
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 15
    return-void
.end method

.method public final y(Lm4/g;Ljava/io/ByteArrayOutputStream;)V
    .registers 8

    .line 1
    iget-object v0, p1, Lm4/b;->r:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_55

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_55

    .line 12
    :cond_b
    iget-object p1, p1, Lm4/b;->r:Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 18
    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_55

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lm4/f;

    .line 30
    iget-wide v1, v0, Lm4/f;->b:J

    .line 32
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 34
    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 37
    move-result-wide v3

    .line 38
    cmp-long v1, v1, v3

    .line 40
    if-eqz v1, :cond_11

    .line 42
    iget-wide v1, v0, Lm4/f;->b:J

    .line 44
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 46
    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    .line 49
    move-result-wide v3

    .line 50
    cmp-long v1, v1, v3

    .line 52
    if-nez v1, :cond_36

    .line 54
    goto :goto_11

    .line 55
    :cond_36
    iget-object v1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 57
    check-cast v1, Lj4/a;

    .line 59
    iget-wide v2, v0, Lm4/f;->b:J

    .line 61
    long-to-int v2, v2

    .line 62
    invoke-virtual {v1, v2, p2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 65
    iget-object v1, p0, Lj4/a;->a:Ljava/lang/Object;

    .line 67
    check-cast v1, Lj4/a;

    .line 69
    iget v2, v0, Lm4/f;->c:I

    .line 71
    invoke-virtual {v1, v2, p2}, Lj4/a;->z(ILjava/io/ByteArrayOutputStream;)V

    .line 74
    iget v1, v0, Lm4/f;->c:I

    .line 76
    if-lez v1, :cond_11

    .line 78
    iget-object v0, v0, Lm4/f;->d:[B

    .line 80
    if-eqz v0, :cond_11

    .line 82
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 85
    goto :goto_11

    .line 86
    :cond_55
    :goto_55
    return-void
.end method

.method public final z(ILjava/io/ByteArrayOutputStream;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lj4/a;->b:[B

    .line 3
    ushr-int/lit8 v1, p1, 0x8

    .line 5
    int-to-byte v1, v1

    .line 6
    const/4 v2, 0x1

    .line 7
    aput-byte v1, v0, v2

    .line 9
    and-int/lit16 p1, p1, 0xff

    .line 11
    int-to-byte p1, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    aput-byte p1, v0, v1

    .line 15
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 18
    return-void
.end method
