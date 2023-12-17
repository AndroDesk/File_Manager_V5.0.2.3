.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarLookupSids"
.end annotation


# instance fields
.field public count:I

.field public domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public level:S

.field public names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

.field public retval:I

.field public sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;SI)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 6
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 8
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 10
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    .line 12
    iput-short p5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->level:S

    .line 14
    iput p6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    .line 16
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
    if-eqz v0, :cond_16

    .line 7
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 13
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;-><init>()V

    .line 16
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 18
    :cond_11
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 20
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 23
    :cond_16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    .line 25
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 28
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    .line 34
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 37
    move-result p1

    .line 38
    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    .line 40
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 3
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 6
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 8
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 11
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    .line 13
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 16
    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->level:S

    .line 18
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 21
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    .line 23
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 26
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method
