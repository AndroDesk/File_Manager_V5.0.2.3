.class public Ljcifs/dcerpc/rpc$sid_t;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sid_t"
.end annotation


# instance fields
.field public identifier_authority:[B

.field public revision:B

.field public sub_authority:[I

.field public sub_authority_count:B


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
    .registers 9

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 12
    move-result v1

    .line 13
    int-to-byte v1, v1

    .line 14
    iput-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 16
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 19
    move-result v1

    .line 20
    int-to-byte v1, v1

    .line 21
    iput-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 23
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 25
    const/4 v2, 0x6

    .line 26
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 29
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 31
    mul-int/lit8 v4, v0, 0x4

    .line 33
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 36
    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 38
    if-nez v4, :cond_2b

    .line 40
    new-array v4, v2, [B

    .line 42
    iput-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 44
    :cond_2b
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x0

    .line 49
    move v4, v1

    .line 50
    :goto_31
    if-lt v4, v2, :cond_5d

    .line 52
    iget-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 54
    if-nez v2, :cond_4b

    .line 56
    if-ltz v0, :cond_43

    .line 58
    const v2, 0xffff

    .line 61
    if-gt v0, v2, :cond_43

    .line 63
    new-array v2, v0, [I

    .line 65
    iput-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 67
    goto :goto_4b

    .line 68
    :cond_43
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 70
    const-string v0, "invalid array conformance"

    .line 72
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p1

    .line 76
    :cond_4b
    :goto_4b
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 79
    move-result-object v5

    .line 80
    :goto_4f
    if-lt v1, v0, :cond_52

    .line 82
    return-void

    .line 83
    :cond_52
    iget-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 85
    invoke-virtual {v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 88
    move-result v2

    .line 89
    aput v2, p1, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 93
    goto :goto_4f

    .line 94
    :cond_5d
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 96
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 99
    move-result v6

    .line 100
    int-to-byte v6, v6

    .line 101
    aput-byte v6, v5, v4

    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 105
    goto :goto_31
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 8

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 12
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 15
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 17
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 20
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 22
    const/4 v2, 0x6

    .line 23
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 26
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 28
    const/4 v4, 0x4

    .line 29
    invoke-static {v0, v4, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    move v4, v1

    .line 35
    :goto_22
    if-lt v4, v2, :cond_35

    .line 37
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 40
    move-result-object v5

    .line 41
    :goto_28
    if-lt v1, v0, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    iget-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 46
    aget p1, p1, v1

    .line 48
    invoke-virtual {v5, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_28

    .line 54
    :cond_35
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 56
    aget-byte v5, v5, v4

    .line 58
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 63
    goto :goto_22
.end method
