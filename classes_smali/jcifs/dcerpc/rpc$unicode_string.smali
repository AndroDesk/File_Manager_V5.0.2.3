.class public Ljcifs/dcerpc/rpc$unicode_string;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unicode_string"
.end annotation


# instance fields
.field public buffer:[S

.field public length:S

.field public maximum_length:S


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
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 8
    move-result v0

    .line 9
    int-to-short v0, v0

    .line 10
    iput-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 12
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 15
    move-result v0

    .line 16
    int-to-short v0, v0

    .line 17
    iput-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 19
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_58

    .line 25
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 27
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 34
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 37
    move-result v1

    .line 38
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 40
    mul-int/lit8 v3, v1, 0x2

    .line 42
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 45
    iget-object v3, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 47
    if-nez v3, :cond_44

    .line 49
    if-ltz v0, :cond_3c

    .line 51
    const v3, 0xffff

    .line 54
    if-gt v0, v3, :cond_3c

    .line 56
    new-array v0, v0, [S

    .line 58
    iput-object v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 60
    goto :goto_44

    .line 61
    :cond_3c
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 63
    const-string v0, "invalid array conformance"

    .line 65
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    :cond_44
    :goto_44
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 72
    move-result-object p1

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_49
    if-lt v0, v1, :cond_4c

    .line 76
    goto :goto_58

    .line 77
    :cond_4c
    iget-object v2, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 79
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 82
    move-result v3

    .line 83
    int-to-short v3, v3

    .line 84
    aput-short v3, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 88
    goto :goto_49

    .line 89
    :cond_58
    :goto_58
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 10
    iget-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 12
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 15
    iget-object v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 21
    iget-object v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 23
    if-eqz v0, :cond_40

    .line 25
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 27
    iget-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 31
    iget-short v1, p0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 33
    div-int/lit8 v1, v1, 0x2

    .line 35
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 42
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 45
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 47
    const/4 v3, 0x2

    .line 48
    invoke-static {v0, v3, p1, v2}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 51
    move-result-object p1

    .line 52
    :goto_33
    if-lt v1, v0, :cond_36

    .line 54
    goto :goto_40

    .line 55
    :cond_36
    iget-object v2, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 57
    aget-short v2, v2, v1

    .line 59
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_33

    .line 65
    :cond_40
    :goto_40
    return-void
.end method
