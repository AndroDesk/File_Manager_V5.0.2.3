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
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget-byte v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget-byte v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    return-void
.end method
