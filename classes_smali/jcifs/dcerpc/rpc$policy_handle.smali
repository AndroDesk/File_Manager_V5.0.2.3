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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/rpc$policy_handle;->type:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    if-nez v0, :cond_18

    new-instance v0, Ljcifs/dcerpc/rpc$uuid_t;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    :cond_18
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v3, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v3, :cond_54

    new-array v3, v1, [B

    iput-object v3, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    :cond_54
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_59
    if-lt v0, v1, :cond_5c

    return-void

    :cond_5c
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v2, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_59
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->type:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_37
    if-lt v0, v1, :cond_3a

    return-void

    :cond_3a
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v2, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_37
.end method
