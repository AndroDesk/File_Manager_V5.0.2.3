.class public Ljcifs/dcerpc/rpc$policy_handle;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "policy_handle"
.end annotation


# instance fields
.field public type:I

.field public uuid:Ljcifs/dcerpc/rpc$uuid_t;


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
    move-result v1

    .line 9
    iput v1, p0, Ljcifs/dcerpc/rpc$policy_handle;->type:I

    .line 11
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 14
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 16
    if-nez v0, :cond_18

    .line 18
    new-instance v0, Ljcifs/dcerpc/rpc$uuid_t;

    .line 20
    invoke-direct {v0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    .line 23
    iput-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 25
    :cond_18
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 27
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 30
    move-result v1

    .line 31
    iput v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 33
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 35
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 38
    move-result v1

    .line 39
    int-to-short v1, v1

    .line 40
    iput-short v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 42
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 44
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 47
    move-result v1

    .line 48
    int-to-short v1, v1

    .line 49
    iput-short v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 51
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 53
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 56
    move-result v1

    .line 57
    int-to-byte v1, v1

    .line 58
    iput-byte v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 60
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 62
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 65
    move-result v1

    .line 66
    int-to-byte v1, v1

    .line 67
    iput-byte v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 69
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 71
    const/4 v1, 0x6

    .line 72
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 75
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 77
    iget-object v3, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 79
    if-nez v3, :cond_54

    .line 81
    new-array v3, v1, [B

    .line 83
    iput-object v3, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 85
    :cond_54
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 88
    move-result-object p1

    .line 89
    const/4 v0, 0x0

    .line 90
    :goto_59
    if-lt v0, v1, :cond_5c

    .line 92
    return-void

    .line 93
    :cond_5c
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 95
    iget-object v2, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 97
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 100
    move-result v3

    .line 101
    int-to-byte v3, v3

    .line 102
    aput-byte v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_59
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->type:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 12
    iget v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 14
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 17
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 19
    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 21
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 24
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 26
    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 28
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 31
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 33
    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 35
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 38
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 40
    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 42
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 45
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 47
    const/4 v1, 0x6

    .line 48
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 51
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 54
    move-result-object p1

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_37
    if-lt v0, v1, :cond_3a

    .line 58
    return-void

    .line 59
    :cond_3a
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 61
    iget-object v2, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 63
    aget-byte v2, v2, v0

    .line 65
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 70
    goto :goto_37
.end method
