.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQueryInformationPolicy2"
.end annotation


# instance fields
.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:S

.field public retval:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;SLjcifs/dcerpc/ndr/NdrObject;)V
    .registers 4

    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    iput-short p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->level:S

    iput-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->info:Ljcifs/dcerpc/ndr/NdrObject;

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_e
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->level:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0x2e

    return v0
.end method
