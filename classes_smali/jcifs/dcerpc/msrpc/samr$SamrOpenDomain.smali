.class public Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrOpenDomain"
.end annotation


# instance fields
.field public access_mask:I

.field public domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/rpc$policy_handle;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 6
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->access_mask:I

    .line 8
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 10
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 12
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 3
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 6
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 9
    move-result p1

    .line 10
    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->retval:I

    .line 12
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 3
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 6
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->access_mask:I

    .line 8
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 11
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 13
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 16
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method
