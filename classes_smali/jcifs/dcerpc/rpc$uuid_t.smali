.class public Ljcifs/dcerpc/rpc$uuid_t;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "uuid_t"
.end annotation


# instance fields
.field public clock_seq_hi_and_reserved:B

.field public clock_seq_low:B

.field public node:[B

.field public time_hi_and_version:S

.field public time_low:I

.field public time_mid:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 11
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 14
    move-result v0

    .line 15
    int-to-short v0, v0

    .line 16
    iput-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 18
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 21
    move-result v0

    .line 22
    int-to-short v0, v0

    .line 23
    iput-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 25
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 28
    move-result v0

    .line 29
    int-to-byte v0, v0

    .line 30
    iput-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 32
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 35
    move-result v0

    .line 36
    int-to-byte v0, v0

    .line 37
    iput-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 39
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 41
    const/4 v1, 0x6

    .line 42
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 45
    iget-object v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 47
    if-nez v2, :cond_34

    .line 49
    new-array v2, v1, [B

    .line 51
    iput-object v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 53
    :cond_34
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_39
    if-lt v0, v1, :cond_3c

    .line 60
    return-void

    .line 61
    :cond_3c
    iget-object v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 63
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 66
    move-result v3

    .line 67
    int-to-byte v3, v3

    .line 68
    aput-byte v3, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_39
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 12
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 15
    iget-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 17
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 20
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 22
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 25
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 27
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 30
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 32
    const/4 v1, 0x6

    .line 33
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 36
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_28
    if-lt v0, v1, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    iget-object v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 46
    aget-byte v2, v2, v0

    .line 48
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_28
.end method
