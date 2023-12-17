.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarDomainInfo"
.end annotation


# instance fields
.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


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
    .registers 8

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 8
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 10
    if-nez v0, :cond_12

    .line 12
    new-instance v0, Ljcifs/dcerpc/rpc$unicode_string;

    .line 14
    invoke-direct {v0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 17
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 19
    :cond_12
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 21
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 24
    move-result v1

    .line 25
    int-to-short v1, v1

    .line 26
    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 28
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 30
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 33
    move-result v1

    .line 34
    int-to-short v1, v1

    .line 35
    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 37
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 44
    move-result v1

    .line 45
    if-eqz v0, :cond_73

    .line 47
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 49
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 56
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 59
    move-result v2

    .line 60
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 62
    mul-int/lit8 v4, v2, 0x2

    .line 64
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 67
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 69
    iget-object v5, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 71
    if-nez v5, :cond_5c

    .line 73
    if-ltz v0, :cond_54

    .line 75
    const v5, 0xffff

    .line 78
    if-gt v0, v5, :cond_54

    .line 80
    new-array v0, v0, [S

    .line 82
    iput-object v0, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 84
    goto :goto_5c

    .line 85
    :cond_54
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 87
    const-string v0, "invalid array conformance"

    .line 89
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p1

    .line 93
    :cond_5c
    :goto_5c
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 96
    move-result-object v0

    .line 97
    const/4 p1, 0x0

    .line 98
    :goto_61
    if-lt p1, v2, :cond_65

    .line 100
    move-object p1, v0

    .line 101
    goto :goto_73

    .line 102
    :cond_65
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 104
    iget-object v3, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 106
    invoke-virtual {v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 109
    move-result v4

    .line 110
    int-to-short v4, v4

    .line 111
    aput-short v4, v3, p1

    .line 113
    add-int/lit8 p1, p1, 0x1

    .line 115
    goto :goto_61

    .line 116
    :cond_73
    :goto_73
    if-eqz v1, :cond_87

    .line 118
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 120
    if-nez v0, :cond_80

    .line 122
    new-instance v0, Ljcifs/dcerpc/rpc$sid_t;

    .line 124
    invoke-direct {v0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    .line 127
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 129
    :cond_80
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 131
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 133
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 136
    :cond_87
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 7
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 9
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 12
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 14
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 16
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 19
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 21
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 27
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 29
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 32
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 34
    iget-object v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 36
    if-eqz v1, :cond_50

    .line 38
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 40
    iget-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 42
    div-int/lit8 v1, v1, 0x2

    .line 44
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 46
    div-int/lit8 v0, v0, 0x2

    .line 48
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 55
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 58
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 60
    const/4 v3, 0x2

    .line 61
    invoke-static {v1, v3, p1, v2}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 64
    move-result-object v2

    .line 65
    :goto_40
    if-lt v0, v1, :cond_44

    .line 67
    move-object p1, v2

    .line 68
    goto :goto_50

    .line 69
    :cond_44
    iget-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 71
    iget-object p1, p1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 73
    aget-short p1, p1, v0

    .line 75
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_40

    .line 81
    :cond_50
    :goto_50
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 83
    if-eqz v0, :cond_59

    .line 85
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 87
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 90
    :cond_59
    return-void
.end method
