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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iput p2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iput p2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    iput-object p0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-void
.end method

.method private getDceReferent(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    :cond_e
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;

    if-nez v0, :cond_2c

    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;

    invoke-direct {v0}, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;-><init>()V

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    iput v1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    iput-object p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->obj:Ljava/lang/Object;

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    return p1
.end method


# virtual methods
.method public advance(I)V
    .registers 6

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int v1, v0, p1

    iget-object v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v3, v2, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    if-le v1, v3, :cond_12

    sub-int/2addr v0, p1

    iput v0, v2, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    :cond_12
    return-void
.end method

.method public align(I)I
    .registers 4

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    add-int v1, v0, p1

    not-int p1, p1

    and-int/2addr p1, v1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return p1
.end method

.method public align(IB)I
    .registers 6

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    move-result p1

    move v0, p1

    :goto_5
    if-gtz v0, :cond_8

    return p1

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

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-wide v1
.end method

.method public dec_ndr_long()I
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v1
.end method

.method public dec_ndr_short()I
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v1
.end method

.method public dec_ndr_small()I
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v0
.end method

.method public dec_ndr_string()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v1, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0xc

    if-eqz v1, :cond_30

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    if-ltz v1, :cond_28

    const v2, 0xffff

    if-gt v1, v2, :cond_28

    :try_start_1b
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    const-string v4, "UTF-16LE"

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_31

    :cond_28
    new-instance v1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v2, "invalid array conformance"

    invoke-direct {v1, v2}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    const/4 v2, 0x0

    :goto_31
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-object v2
.end method

.method public derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;
    .registers 5

    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-direct {v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    iput p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iput-object p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-object v0
.end method

.method public enc_ndr_hyper(J)V
    .registers 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, p2, v1, v2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_long(I)V
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, v1, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_referent(Ljava/lang/Object;I)V
    .registers 4

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void

    :cond_7
    const/4 v0, 0x1

    if-eq p2, v0, :cond_19

    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    const/4 v0, 0x3

    if-eq p2, v0, :cond_19

    return-void

    :cond_11
    invoke-direct {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getDceReferent(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void

    :cond_19
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public enc_ndr_short(I)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    int-to-short p1, p1

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, v1, v2}, Ljcifs/util/Encdec;->enc_uint16le(S[BI)I

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_small(I)V
    .registers 4

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_string(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v3, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/2addr v1, v0

    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    const/4 v5, 0x0

    invoke-static {v5, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/2addr v1, v0

    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v3, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/2addr v1, v0

    :try_start_1f
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p1, v5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_2c} :catch_2c

    :catch_2c
    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    add-int/lit8 v0, v2, 0x1

    aput-byte v5, p1, v2

    add-int/lit8 v1, v0, 0x1

    aput-byte v5, p1, v0

    iget p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public getBuffer()[B
    .registers 2

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    return-object v0
.end method

.method public getCapacity()I
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    return v0
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    return v0
.end method

.method public getTailSpace()I
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readOctetArray([BII)V
    .registers 6

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    iput-object p0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    iput p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    return-void
.end method

.method public setLength(I)V
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iput p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeOctetArray([BII)V
    .registers 6

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method
