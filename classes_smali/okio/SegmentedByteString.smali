.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field public final transient directory:[I

.field public final transient segments:[[B


# direct methods
.method public constructor <init>(Lokio/a;I)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 5
    iget-wide v1, p1, Lokio/a;->b:J

    .line 7
    int-to-long v5, p2

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    invoke-static/range {v1 .. v6}, Lp4/j;->b(JJJ)V

    .line 13
    iget-object v0, p1, Lokio/a;->a:Lp4/g;

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    move v3, v2

    .line 18
    :goto_11
    if-ge v2, p2, :cond_28

    .line 20
    iget v4, v0, Lp4/g;->c:I

    .line 22
    iget v5, v0, Lp4/g;->b:I

    .line 24
    if-eq v4, v5, :cond_20

    .line 26
    sub-int/2addr v4, v5

    .line 27
    add-int/2addr v2, v4

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    iget-object v0, v0, Lp4/g;->f:Lp4/g;

    .line 32
    goto :goto_11

    .line 33
    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    .line 35
    const-string p2, "s.limit == s.pos"

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 40
    throw p1

    .line 41
    :cond_28
    new-array v0, v3, [[B

    .line 43
    iput-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 45
    mul-int/lit8 v3, v3, 0x2

    .line 47
    new-array v0, v3, [I

    .line 49
    iput-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 51
    iget-object p1, p1, Lokio/a;->a:Lp4/g;

    .line 53
    move v0, v1

    .line 54
    :goto_35
    if-ge v1, p2, :cond_58

    .line 56
    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 58
    iget-object v3, p1, Lp4/g;->a:[B

    .line 60
    aput-object v3, v2, v0

    .line 62
    iget v3, p1, Lp4/g;->c:I

    .line 64
    iget v4, p1, Lp4/g;->b:I

    .line 66
    sub-int/2addr v3, v4

    .line 67
    add-int/2addr v3, v1

    .line 68
    if-le v3, p2, :cond_47

    .line 70
    move v1, p2

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v1, v3

    .line 73
    :goto_48
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    .line 75
    aput v1, v3, v0

    .line 77
    array-length v2, v2

    .line 78
    add-int/2addr v2, v0

    .line 79
    aput v4, v3, v2

    .line 81
    const/4 v2, 0x1

    .line 82
    iput-boolean v2, p1, Lp4/g;->d:Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 86
    iget-object p1, p1, Lp4/g;->f:Lp4/g;

    .line 88
    goto :goto_35

    .line 89
    :cond_58
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final d(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 3
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 5
    array-length v1, v1

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 12
    move-result p1

    .line 13
    if-ltz p1, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    not-int p1, p1

    .line 17
    :goto_10
    return p1
.end method

.method public final e()Lokio/ByteString;
    .registers 3

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 3
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 10
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lokio/ByteString;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_20

    .line 10
    check-cast p1, Lokio/ByteString;

    .line 12
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    .line 19
    move-result v3

    .line 20
    if-ne v1, v3, :cond_20

    .line 22
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v2, p1, v2, v1}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_20

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v0, v2

    .line 34
    :goto_21
    return v0
.end method

.method public getByte(I)B
    .registers 9

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 3
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 5
    array-length v1, v1

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 8
    aget v0, v0, v1

    .line 10
    int-to-long v1, v0

    .line 11
    int-to-long v3, p1

    .line 12
    const-wide/16 v5, 0x1

    .line 14
    invoke-static/range {v1 .. v6}, Lp4/j;->b(JJJ)V

    .line 17
    invoke-virtual {p0, p1}, Lokio/SegmentedByteString;->d(I)I

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_18

    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    .line 27
    add-int/lit8 v2, v0, -0x1

    .line 29
    aget v1, v1, v2

    .line 31
    :goto_1e
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    .line 33
    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 35
    array-length v4, v3

    .line 36
    add-int/2addr v4, v0

    .line 37
    aget v2, v2, v4

    .line 39
    aget-object v0, v3, v0

    .line 41
    sub-int/2addr p1, v1

    .line 42
    add-int/2addr p1, v2

    .line 43
    aget-byte p1, v0, p1

    .line 45
    return p1
.end method

.method public hashCode()I
    .registers 9

    .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return v0

    .line 6
    :cond_5
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 8
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    move v3, v2

    .line 12
    move v2, v1

    .line 13
    :goto_c
    if-ge v1, v0, :cond_2b

    .line 15
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 17
    aget-object v4, v4, v1

    .line 19
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    .line 21
    add-int v6, v0, v1

    .line 23
    aget v6, v5, v6

    .line 25
    aget v5, v5, v1

    .line 27
    sub-int v2, v5, v2

    .line 29
    add-int/2addr v2, v6

    .line 30
    :goto_1d
    if-ge v6, v2, :cond_27

    .line 32
    mul-int/lit8 v3, v3, 0x1f

    .line 34
    aget-byte v7, v4, v6

    .line 36
    add-int/2addr v3, v7

    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 39
    goto :goto_1d

    .line 40
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 42
    move v2, v5

    .line 43
    goto :goto_c

    .line 44
    :cond_2b
    iput v3, p0, Lokio/ByteString;->hashCode:I

    .line 46
    return v3
.end method

.method public hex()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lokio/ByteString;->hmacSha1(Lokio/ByteString;)Lokio/ByteString;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lokio/ByteString;->hmacSha256(Lokio/ByteString;)Lokio/ByteString;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public indexOf([BI)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public internalArray()[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public lastIndexOf([BI)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public md5()Lokio/ByteString;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .registers 12

    const/4 v0, 0x0

    if-ltz p1, :cond_42

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_b

    goto :goto_42

    .line 2
    :cond_b
    invoke-virtual {p0, p1}, Lokio/SegmentedByteString;->d(I)I

    move-result v1

    :goto_f
    if-lez p4, :cond_40

    if-nez v1, :cond_15

    move v2, v0

    goto :goto_1b

    .line 3
    :cond_15
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 4
    :goto_1b
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 5
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 7
    aget-object v4, v5, v1

    invoke-virtual {p2, p3, v4, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-nez v2, :cond_3a

    return v0

    :cond_3a
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_40
    const/4 p1, 0x1

    return p1

    :cond_42
    :goto_42
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .registers 12

    const/4 v0, 0x0

    if-ltz p1, :cond_48

    .line 8
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_48

    if-ltz p3, :cond_48

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_11

    goto :goto_48

    .line 9
    :cond_11
    invoke-virtual {p0, p1}, Lokio/SegmentedByteString;->d(I)I

    move-result v1

    :goto_15
    if-lez p4, :cond_46

    if-nez v1, :cond_1b

    move v2, v0

    goto :goto_21

    .line 10
    :cond_1b
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 11
    :goto_21
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 12
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 13
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 14
    aget-object v4, v5, v1

    invoke-static {v4, v2, p3, p2, v3}, Lp4/j;->a([BII[BI)Z

    move-result v2

    if-nez v2, :cond_40

    return v0

    :cond_40
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_46
    const/4 p1, 0x1

    return p1

    :cond_48
    :goto_48
    return v0
.end method

.method public sha1()Lokio/ByteString;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public size()I
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 3
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 5
    array-length v1, v1

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 8
    aget v0, v0, v1

    .line 10
    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public substring(I)Lokio/ByteString;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->substring(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lokio/ByteString;
    .registers 4

    .line 2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public toByteArray()[B
    .registers 9

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 3
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 5
    array-length v2, v1

    .line 6
    add-int/lit8 v2, v2, -0x1

    .line 8
    aget v0, v0, v2

    .line 10
    new-array v0, v0, [B

    .line 12
    array-length v1, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_e
    if-ge v2, v1, :cond_25

    .line 17
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    .line 19
    add-int v5, v1, v2

    .line 21
    aget v5, v4, v5

    .line 23
    aget v4, v4, v2

    .line 25
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 27
    aget-object v6, v6, v2

    .line 29
    sub-int v7, v4, v3

    .line 31
    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    move v3, v4

    .line 37
    goto :goto_e

    .line 38
    :cond_25
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 8

    if-eqz p1, :cond_1f

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 2
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    .line 3
    aget v3, v3, v1

    .line 4
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v2, v3, v2

    invoke-virtual {p1, v5, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_7

    :cond_1e
    return-void

    .line 5
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lokio/a;)V
    .registers 10

    .line 6
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_2f

    .line 7
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    .line 8
    aget v3, v3, v1

    .line 9
    new-instance v5, Lp4/g;

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v4, v3

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v4, v7}, Lp4/g;-><init>([BII)V

    .line 10
    iget-object v2, p1, Lokio/a;->a:Lp4/g;

    if-nez v2, :cond_26

    .line 11
    iput-object v5, v5, Lp4/g;->g:Lp4/g;

    iput-object v5, v5, Lp4/g;->f:Lp4/g;

    iput-object v5, p1, Lokio/a;->a:Lp4/g;

    goto :goto_2b

    .line 12
    :cond_26
    iget-object v2, v2, Lp4/g;->g:Lp4/g;

    invoke-virtual {v2, v5}, Lp4/g;->b(Lp4/g;)V

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_5

    .line 13
    :cond_2f
    iget-wide v0, p1, Lokio/a;->b:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lokio/a;->b:J

    return-void
.end method
