.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfo502"
.end annotation


# instance fields
.field public current_uses:I

.field public max_uses:I

.field public netname:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public permissions:I

.field public remark:Ljava/lang/String;

.field public sd_size:I

.field public security_descriptor:[B

.field public type:I


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
    move-result v0

    .line 9
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 12
    move-result v1

    .line 13
    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->type:I

    .line 15
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 22
    move-result v2

    .line 23
    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->permissions:I

    .line 25
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 28
    move-result v2

    .line 29
    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->max_uses:I

    .line 31
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 34
    move-result v2

    .line 35
    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->current_uses:I

    .line 37
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 48
    move-result v4

    .line 49
    iput v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    .line 51
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 54
    move-result v4

    .line 55
    if-eqz v0, :cond_40

    .line 57
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 59
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    .line 65
    :cond_40
    if-eqz v1, :cond_4a

    .line 67
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 69
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    .line 75
    :cond_4a
    if-eqz v2, :cond_54

    .line 77
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 79
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    .line 85
    :cond_54
    if-eqz v3, :cond_5e

    .line 87
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 89
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    .line 95
    :cond_5e
    if-eqz v4, :cond_99

    .line 97
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 99
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 102
    move-result v0

    .line 103
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 105
    mul-int/lit8 v2, v0, 0x1

    .line 107
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 110
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    .line 112
    if-nez v2, :cond_85

    .line 114
    if-ltz v0, :cond_7d

    .line 116
    const v2, 0xffff

    .line 119
    if-gt v0, v2, :cond_7d

    .line 121
    new-array v2, v0, [B

    .line 123
    iput-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    .line 125
    goto :goto_85

    .line 126
    :cond_7d
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 128
    const-string v0, "invalid array conformance"

    .line 130
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p1

    .line 134
    :cond_85
    :goto_85
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 137
    move-result-object p1

    .line 138
    const/4 v1, 0x0

    .line 139
    :goto_8a
    if-lt v1, v0, :cond_8d

    .line 141
    goto :goto_99

    .line 142
    :cond_8d
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    .line 144
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 147
    move-result v3

    .line 148
    int-to-byte v3, v3

    .line 149
    aput-byte v3, v2, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 153
    goto :goto_8a

    .line 154
    :cond_99
    :goto_99
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 11
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->type:I

    .line 13
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 21
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->permissions:I

    .line 23
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 26
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->max_uses:I

    .line 28
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 31
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->current_uses:I

    .line 33
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 36
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 41
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 46
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    .line 48
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 51
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    .line 53
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 56
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    .line 58
    if-eqz v0, :cond_40

    .line 60
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 62
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 65
    :cond_40
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    .line 67
    if-eqz v0, :cond_49

    .line 69
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 71
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 74
    :cond_49
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    .line 76
    if-eqz v0, :cond_52

    .line 78
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 80
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 83
    :cond_52
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    .line 85
    if-eqz v0, :cond_5b

    .line 87
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 89
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 92
    :cond_5b
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    .line 94
    if-eqz v0, :cond_7b

    .line 96
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 98
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    .line 100
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 103
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-static {v0, v2, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 109
    move-result-object p1

    .line 110
    const/4 v1, 0x0

    .line 111
    :goto_6e
    if-lt v1, v0, :cond_71

    .line 113
    goto :goto_7b

    .line 114
    :cond_71
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    .line 116
    aget-byte v2, v2, v1

    .line 118
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 123
    goto :goto_6e

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method
