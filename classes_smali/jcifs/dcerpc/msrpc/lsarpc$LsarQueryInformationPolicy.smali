.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQueryInformationPolicy"
.end annotation


# instance fields
.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:S

.field public retval:I


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;SLjcifs/dcerpc/ndr/NdrObject;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 6
    iput-short p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->level:S

    .line 8
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 10
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 12
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 15
    :cond_e
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    .line 21
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 3
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 6
    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->level:S

    .line 8
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 11
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method
