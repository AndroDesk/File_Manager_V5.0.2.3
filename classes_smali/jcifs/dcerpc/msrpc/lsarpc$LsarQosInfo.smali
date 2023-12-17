.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQosInfo"
.end annotation


# instance fields
.field public context_mode:B

.field public effective_only:B

.field public impersonation_level:S

.field public length:I


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
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    .line 11
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 14
    move-result v0

    .line 15
    int-to-short v0, v0

    .line 16
    iput-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    .line 18
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 21
    move-result v0

    .line 22
    int-to-byte v0, v0

    .line 23
    iput-byte v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    .line 25
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 28
    move-result p1

    .line 29
    int-to-byte p1, p1

    .line 30
    iput-byte p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    .line 32
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    .line 12
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 15
    iget-byte v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    .line 17
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 20
    iget-byte v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    .line 22
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 25
    return-void
.end method
