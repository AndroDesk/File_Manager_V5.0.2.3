.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTranslatedName"
.end annotation


# instance fields
.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid_index:I

.field public sid_type:S


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
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 8
    move-result v1

    .line 9
    int-to-short v1, v1

    .line 10
    iput-short v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    .line 12
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 15
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 17
    if-nez v0, :cond_19

    .line 19
    new-instance v0, Ljcifs/dcerpc/rpc$unicode_string;

    .line 21
    invoke-direct {v0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 24
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 26
    :cond_19
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 28
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 31
    move-result v1

    .line 32
    int-to-short v1, v1

    .line 33
    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 35
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 37
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 40
    move-result v1

    .line 41
    int-to-short v1, v1

    .line 42
    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 44
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 51
    move-result v1

    .line 52
    iput v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    .line 54
    if-eqz v0, :cond_7b

    .line 56
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 58
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 65
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 68
    move-result v1

    .line 69
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 71
    mul-int/lit8 v3, v1, 0x2

    .line 73
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 76
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 78
    iget-object v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 80
    if-nez v4, :cond_65

    .line 82
    if-ltz v0, :cond_5d

    .line 84
    const v4, 0xffff

    .line 87
    if-gt v0, v4, :cond_5d

    .line 89
    new-array v0, v0, [S

    .line 91
    iput-object v0, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 93
    goto :goto_65

    .line 94
    :cond_5d
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 96
    const-string v0, "invalid array conformance"

    .line 98
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p1

    .line 102
    :cond_65
    :goto_65
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 105
    move-result-object p1

    .line 106
    const/4 v0, 0x0

    .line 107
    :goto_6a
    if-lt v0, v1, :cond_6d

    .line 109
    goto :goto_7b

    .line 110
    :cond_6d
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 112
    iget-object v2, v2, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 114
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 117
    move-result v3

    .line 118
    int-to-short v3, v3

    .line 119
    aput-short v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_6a

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 12
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 14
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 17
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 19
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 21
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 24
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 26
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 32
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    .line 34
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 37
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 39
    iget-object v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 41
    if-eqz v1, :cond_54

    .line 43
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 45
    iget-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 47
    div-int/lit8 v1, v1, 0x2

    .line 49
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 51
    div-int/lit8 v0, v0, 0x2

    .line 53
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 60
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 63
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-static {v1, v3, p1, v2}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 69
    move-result-object p1

    .line 70
    :goto_45
    if-lt v0, v1, :cond_48

    .line 72
    goto :goto_54

    .line 73
    :cond_48
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 75
    iget-object v2, v2, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 77
    aget-short v2, v2, v0

    .line 79
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    goto :goto_45

    .line 85
    :cond_54
    :goto_54
    return-void
.end method
