.class public Ljcifs/dcerpc/ndr/NdrBuffer;
.super Ljava/lang/Object;
.source "NdrBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/ndr/NdrBuffer$Entry;
    }
.end annotation


# instance fields
.field public buf:[B

.field public deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

.field public index:I

.field public length:I

.field public referent:I

.field public referents:Ljava/util/HashMap;

.field public start:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 6
    iput p2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 8
    iput p2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 13
    iput-object p0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 15
    return-void
.end method

.method private getDceReferent(Ljava/lang/Object;)I
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    .line 3
    if-nez v0, :cond_e

    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iput-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    .line 15
    :cond_e
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;

    .line 23
    if-nez v0, :cond_2c

    .line 25
    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;

    .line 27
    invoke-direct {v0}, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;-><init>()V

    .line 30
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    .line 32
    add-int/lit8 v2, v1, 0x1

    .line 34
    iput v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    .line 36
    iput v1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    .line 38
    iput-object p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->obj:Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    .line 42
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2c
    iget p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    .line 47
    return p1
.end method


# virtual methods
.method public advance(I)V
    .registers 6

    .line 1
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 6
    iget p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 8
    sub-int v1, v0, p1

    .line 10
    iget-object v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 12
    iget v3, v2, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 14
    if-le v1, v3, :cond_12

    .line 16
    sub-int/2addr v0, p1

    .line 17
    iput v0, v2, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 19
    :cond_12
    return-void
.end method

.method public align(I)I
    .registers 4

    add-int/lit8 p1, p1, -0x1

    .line 3
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    add-int v1, v0, p1

    not-int p1, p1

    and-int/2addr p1, v1

    sub-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return p1
.end method

.method public align(IB)I
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    move-result p1

    move v0, p1

    :goto_5
    if-gtz v0, :cond_8

    return p1

    .line 2
    :cond_8
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v2, v0

    aput-byte p2, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method public dec_ndr_hyper()J
    .registers 4

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 6
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 8
    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 10
    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 17
    return-wide v1
.end method

.method public dec_ndr_long()I
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 7
    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 9
    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 16
    return v1
.end method

.method public dec_ndr_short()I
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 7
    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 9
    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 16
    return v1
.end method

.method public dec_ndr_small()I
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 3
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 5
    aget-byte v0, v0, v1

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 13
    return v0
.end method

.method public dec_ndr_string()Ljava/lang/String;
    .registers 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 7
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 9
    invoke-static {v1, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    .line 12
    move-result v1

    .line 13
    add-int/lit8 v0, v0, 0xc

    .line 15
    if-eqz v1, :cond_30

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 19
    mul-int/lit8 v1, v1, 0x2

    .line 21
    if-ltz v1, :cond_28

    .line 23
    const v2, 0xffff

    .line 26
    if-gt v1, v2, :cond_28

    .line 28
    :try_start_1b
    new-instance v2, Ljava/lang/String;

    .line 30
    iget-object v3, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 32
    const-string v4, "UTF-16LE"

    .line 34
    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 37
    add-int/lit8 v1, v1, 0x2

    .line 39
    add-int/2addr v0, v1

    .line 40
    goto :goto_31

    .line 41
    :cond_28
    new-instance v1, Ljcifs/dcerpc/ndr/NdrException;

    .line 43
    const-string v2, "invalid array conformance"

    .line 45
    invoke-direct {v1, v2}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v1
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_30} :catch_30

    .line 49
    :catch_30
    :cond_30
    const/4 v2, 0x0

    .line 50
    :goto_31
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 52
    sub-int/2addr v0, v1

    .line 53
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 56
    return-object v2
.end method

.method public derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;
    .registers 5

    .line 1
    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 3
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 5
    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 7
    invoke-direct {v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 10
    iput p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 12
    iget-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 14
    iput-object p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 16
    return-object v0
.end method

.method public enc_ndr_hyper(J)V
    .registers 6

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 6
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 8
    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 10
    invoke-static {p1, p2, v1, v2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 13
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 16
    return-void
.end method

.method public enc_ndr_long(I)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 7
    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 9
    invoke-static {p1, v1, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 12
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 15
    return-void
.end method

.method public enc_ndr_referent(Ljava/lang/Object;I)V
    .registers 4

    .line 1
    if-nez p1, :cond_7

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    if-eq p2, v0, :cond_19

    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p2, v0, :cond_11

    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p2, v0, :cond_19

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-direct {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getDceReferent(Ljava/lang/Object;)I

    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 33
    return-void
.end method

.method public enc_ndr_short(I)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    int-to-short p1, p1

    .line 6
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 8
    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 10
    invoke-static {p1, v1, v2}, Ljcifs/util/Encdec;->enc_uint16le(S[BI)I

    .line 13
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 16
    return-void
.end method

.method public enc_ndr_small(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 3
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 5
    and-int/lit16 p1, p1, 0xff

    .line 7
    int-to-byte p1, p1

    .line 8
    aput-byte p1, v0, v1

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 14
    return-void
.end method

.method public enc_ndr_string(Ljava/lang/String;)V
    .registers 8

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    move-result v2

    .line 11
    add-int/lit8 v3, v2, 0x1

    .line 13
    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 15
    invoke-static {v3, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 18
    add-int/2addr v1, v0

    .line 19
    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {v5, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 25
    add-int/2addr v1, v0

    .line 26
    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 28
    invoke-static {v3, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 31
    add-int/2addr v1, v0

    .line 32
    :try_start_1f
    const-string v0, "UTF-16LE"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 40
    mul-int/lit8 v3, v2, 0x2

    .line 42
    invoke-static {p1, v5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_2c} :catch_2c

    .line 45
    :catch_2c
    mul-int/lit8 v2, v2, 0x2

    .line 47
    add-int/2addr v2, v1

    .line 48
    iget-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 50
    add-int/lit8 v0, v2, 0x1

    .line 52
    aput-byte v5, p1, v2

    .line 54
    add-int/lit8 v1, v0, 0x1

    .line 56
    aput-byte v5, p1, v0

    .line 58
    iget p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 60
    sub-int/2addr v1, p1

    .line 61
    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 64
    return-void
.end method

.method public getBuffer()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 3
    return-object v0
.end method

.method public getCapacity()I
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 6
    sub-int/2addr v0, v1

    .line 7
    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 3
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 3
    iget v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 5
    return v0
.end method

.method public getTailSpace()I
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 6
    sub-int/2addr v0, v1

    .line 7
    return v0
.end method

.method public readOctetArray([BII)V
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 3
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0, p3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 11
    return-void
.end method

.method public reset()V
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 3
    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 8
    iput-object p0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 10
    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 1
    iput p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 3
    return-void
.end method

.method public setLength(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 3
    iput p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "start="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ",index="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ",length="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public writeOctetArray([BII)V
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 3
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0, p3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 11
    return-void
.end method
