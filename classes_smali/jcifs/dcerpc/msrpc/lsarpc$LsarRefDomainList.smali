.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarRefDomainList"
.end annotation


# instance fields
.field public count:I

.field public domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

.field public max_count:I


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
    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    .line 11
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 18
    move-result v1

    .line 19
    iput v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->max_count:I

    .line 21
    if-eqz v0, :cond_5a

    .line 23
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 25
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 28
    move-result v0

    .line 29
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 31
    mul-int/lit8 v2, v0, 0xc

    .line 33
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 36
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 38
    if-nez v2, :cond_3b

    .line 40
    if-ltz v0, :cond_33

    .line 42
    const v2, 0xffff

    .line 45
    if-gt v0, v2, :cond_33

    .line 47
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 49
    iput-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 51
    goto :goto_3b

    .line 52
    :cond_33
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 54
    const-string v0, "invalid array conformance"

    .line 56
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    :cond_3b
    :goto_3b
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 63
    move-result-object p1

    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_40
    if-lt v1, v0, :cond_43

    .line 67
    goto :goto_5a

    .line 68
    :cond_43
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 70
    aget-object v3, v2, v1

    .line 72
    if-nez v3, :cond_50

    .line 74
    new-instance v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 76
    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;-><init>()V

    .line 79
    aput-object v3, v2, v1

    .line 81
    :cond_50
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 83
    aget-object v2, v2, v1

    .line 85
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_40

    .line 91
    :cond_5a
    :goto_5a
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 16
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->max_count:I

    .line 18
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 21
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 23
    if-eqz v0, :cond_35

    .line 25
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 27
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    .line 29
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 32
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 34
    const/16 v2, 0xc

    .line 36
    invoke-static {v0, v2, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_28
    if-lt v1, v0, :cond_2b

    .line 43
    goto :goto_35

    .line 44
    :cond_2b
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 46
    aget-object v2, v2, v1

    .line 48
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_28

    .line 54
    :cond_35
    :goto_35
    return-void
.end method
