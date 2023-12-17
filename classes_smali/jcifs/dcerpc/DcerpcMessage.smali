.class public abstract Ljcifs/dcerpc/DcerpcMessage;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "DcerpcMessage.java"

# interfaces
.implements Ljcifs/dcerpc/DcerpcConstants;


# instance fields
.field public alloc_hint:I

.field public call_id:I

.field public flags:I

.field public length:I

.field public ptype:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 10
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 12
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 14
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 16
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    .line 18
    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 4
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 6
    const/16 v1, 0xd

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x3

    .line 10
    const/16 v4, 0xc

    .line 12
    if-eq v0, v4, :cond_2a

    .line 14
    if-eq v0, v2, :cond_2a

    .line 16
    if-eq v0, v3, :cond_2a

    .line 18
    if-ne v0, v1, :cond_14

    .line 20
    goto :goto_2a

    .line 21
    :cond_14
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "Unexpected ptype: "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_2a
    :goto_2a
    if-eq v0, v2, :cond_2e

    .line 45
    if-ne v0, v3, :cond_3a

    .line 47
    :cond_2e
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 50
    move-result v0

    .line 51
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 53
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 56
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 59
    :cond_3a
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 61
    if-eq v0, v3, :cond_45

    .line 63
    if-ne v0, v1, :cond_41

    .line 65
    goto :goto_45

    .line 66
    :cond_41
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 69
    goto :goto_4b

    .line 70
    :cond_45
    :goto_45
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 73
    move-result p1

    .line 74
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    .line 76
    :goto_4b
    return-void
.end method

.method public decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-ne v0, v1, :cond_44

    .line 8
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_44

    .line 14
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 20
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 26
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 29
    move-result v0

    .line 30
    const/16 v1, 0x10

    .line 32
    if-ne v0, v1, :cond_3c

    .line 34
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 37
    move-result v0

    .line 38
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 40
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_34

    .line 46
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 52
    return-void

    .line 53
    :cond_34
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 55
    const-string v0, "DCERPC authentication not supported"

    .line 57
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1

    .line 61
    :cond_3c
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 63
    const-string v0, "Data representation not supported"

    .line 65
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    :cond_44
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 71
    const-string v0, "DCERPC version not supported"

    .line 73
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
.end method

.method public abstract decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 7
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 10
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_20

    .line 15
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 22
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 25
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcMessage;->getOpnum()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 32
    move v2, v1

    .line 33
    :cond_20
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 36
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    .line 39
    move-result v1

    .line 40
    sub-int/2addr v1, v0

    .line 41
    iput v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 43
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 45
    if-nez v1, :cond_39

    .line 47
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 50
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 52
    sub-int/2addr v1, v2

    .line 53
    iput v1, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 55
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 58
    :cond_39
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 61
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 64
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 66
    add-int/2addr v0, v1

    .line 67
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 70
    return-void
.end method

.method public encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 9
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 11
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 14
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 16
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 19
    const/16 v1, 0x10

    .line 21
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 24
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 26
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 29
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 32
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 34
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 37
    return-void
.end method

.method public abstract encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
.end method

.method public abstract getOpnum()I
.end method

.method public getResult()Ljcifs/dcerpc/DcerpcException;
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    .line 3
    if-eqz v0, :cond_c

    .line 5
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    .line 7
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    .line 9
    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(I)V

    .line 12
    return-object v0

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public isFlagSet(I)Z
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_7

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public setFlag(I)V
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 6
    return-void
.end method

.method public unsetFlag(I)V
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 7
    return-void
.end method
