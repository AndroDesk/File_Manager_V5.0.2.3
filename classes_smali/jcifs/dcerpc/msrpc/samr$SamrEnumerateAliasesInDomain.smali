.class public Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrEnumerateAliasesInDomain"
.end annotation


# instance fields
.field public acct_flags:I

.field public domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public num_entries:I

.field public resume_handle:I

.field public retval:I

.field public sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/msrpc/samr$SamrSamArray;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 6
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 8
    iput p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->acct_flags:I

    .line 10
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 12
    iput p5, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->num_entries:I

    .line 14
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
    iput v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 7
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1c

    .line 13
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 15
    if-nez v0, :cond_17

    .line 17
    new-instance v0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 19
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    .line 22
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 24
    :cond_17
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 26
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 29
    :cond_1c
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 32
    move-result v0

    .line 33
    iput v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->num_entries:I

    .line 35
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 38
    move-result p1

    .line 39
    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    .line 41
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 3
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 6
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 8
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 11
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->acct_flags:I

    .line 13
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 16
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method
