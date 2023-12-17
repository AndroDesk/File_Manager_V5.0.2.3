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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 7

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/16 v4, 0xc

    if-eq v0, v4, :cond_2a

    if-eq v0, v2, :cond_2a

    if-eq v0, v3, :cond_2a

    if-ne v0, v1, :cond_14

    goto :goto_2a

    :cond_14
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected ptype: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_2a
    if-eq v0, v2, :cond_2e

    if-ne v0, v3, :cond_3a

    :cond_2e
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    :cond_3a
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v3, :cond_45

    if-ne v0, v1, :cond_41

    goto :goto_45

    :cond_41
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    goto :goto_4b

    :cond_45
    :goto_45
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    :goto_4b
    return-void
.end method

.method public decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_44

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    return-void

    :cond_34
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "DCERPC authentication not supported"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "Data representation not supported"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "DCERPC version not supported"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 v2, 0x0

    if-nez v1, :cond_20

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v1

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcMessage;->getOpnum()I

    move-result v2

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    move v2, v1

    :cond_20
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-nez v1, :cond_39

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    :cond_39
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    return-void
.end method

.method public encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public abstract encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
.end method

.method public abstract getOpnum()I
.end method

.method public getResult()Ljcifs/dcerpc/DcerpcException;
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    if-eqz v0, :cond_c

    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(I)V

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public setFlag(I)V
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method

.method public unsetFlag(I)V
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method
