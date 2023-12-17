.class public Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrSamEntry"
.end annotation


# instance fields
.field public idx:I

.field public name:Ljcifs/dcerpc/rpc$unicode_string;


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
    .registers 7

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 8
    move-result v1

    .line 9
    iput v1, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    .line 11
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 14
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 16
    if-nez v0, :cond_18

    .line 18
    new-instance v0, Ljcifs/dcerpc/rpc$unicode_string;

    .line 20
    invoke-direct {v0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 23
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 25
    :cond_18
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 27
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 30
    move-result v1

    .line 31
    int-to-short v1, v1

    .line 32
    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 34
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 36
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 39
    move-result v1

    .line 40
    int-to-short v1, v1

    .line 41
    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 43
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_74

    .line 49
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 51
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 58
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 61
    move-result v1

    .line 62
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 64
    mul-int/lit8 v3, v1, 0x2

    .line 66
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 69
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 71
    iget-object v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 73
    if-nez v4, :cond_5e

    .line 75
    if-ltz v0, :cond_56

    .line 77
    const v4, 0xffff

    .line 80
    if-gt v0, v4, :cond_56

    .line 82
    new-array v0, v0, [S

    .line 84
    iput-object v0, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 86
    goto :goto_5e

    .line 87
    :cond_56
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 89
    const-string v0, "invalid array conformance"

    .line 91
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p1

    .line 95
    :cond_5e
    :goto_5e
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 98
    move-result-object p1

    .line 99
    const/4 v0, 0x0

    .line 100
    :goto_63
    if-lt v0, v1, :cond_66

    .line 102
    goto :goto_74

    .line 103
    :cond_66
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 105
    iget-object v2, v2, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 107
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 110
    move-result v3

    .line 111
    int-to-short v3, v3

    .line 112
    aput-short v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 116
    goto :goto_63

    .line 117
    :cond_74
    :goto_74
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 12
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 14
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 17
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 19
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 21
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 24
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 26
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 32
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 34
    iget-object v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 36
    if-eqz v1, :cond_4f

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
    move-result-object p1

    .line 65
    :goto_40
    if-lt v0, v1, :cond_43

    .line 67
    goto :goto_4f

    .line 68
    :cond_43
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 70
    iget-object v2, v2, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 72
    aget-short v2, v2, v0

    .line 74
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    goto :goto_40

    .line 80
    :cond_4f
    :goto_4f
    return-void
.end method
