.class public Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsInfo3"
.end annotation


# instance fields
.field public comment:Ljava/lang/String;

.field public num_stores:I

.field public path:Ljava/lang/String;

.field public state:I

.field public stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;


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
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 16
    move-result v2

    .line 17
    iput v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->state:I

    .line 19
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 22
    move-result v2

    .line 23
    iput v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 25
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 28
    move-result v2

    .line 29
    if-eqz v0, :cond_26

    .line 31
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 33
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    .line 39
    :cond_26
    if-eqz v1, :cond_30

    .line 41
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 43
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    .line 49
    :cond_30
    if-eqz v2, :cond_76

    .line 51
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 53
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 56
    move-result v0

    .line 57
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 59
    mul-int/lit8 v2, v0, 0xc

    .line 61
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 64
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 66
    if-nez v2, :cond_57

    .line 68
    if-ltz v0, :cond_4f

    .line 70
    const v2, 0xffff

    .line 73
    if-gt v0, v2, :cond_4f

    .line 75
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 77
    iput-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 79
    goto :goto_57

    .line 80
    :cond_4f
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 82
    const-string v0, "invalid array conformance"

    .line 84
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1

    .line 88
    :cond_57
    :goto_57
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 91
    move-result-object p1

    .line 92
    const/4 v1, 0x0

    .line 93
    :goto_5c
    if-lt v1, v0, :cond_5f

    .line 95
    goto :goto_76

    .line 96
    :cond_5f
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 98
    aget-object v3, v2, v1

    .line 100
    if-nez v3, :cond_6c

    .line 102
    new-instance v3, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 104
    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;-><init>()V

    .line 107
    aput-object v3, v2, v1

    .line 109
    :cond_6c
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 111
    aget-object v2, v2, v1

    .line 113
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 118
    goto :goto_5c

    .line 119
    :cond_76
    :goto_76
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 11
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 16
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->state:I

    .line 18
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 21
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 23
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 26
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 28
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 31
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    .line 33
    if-eqz v0, :cond_27

    .line 35
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 37
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 40
    :cond_27
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    .line 42
    if-eqz v0, :cond_30

    .line 44
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 46
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 49
    :cond_30
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 51
    if-eqz v0, :cond_51

    .line 53
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 55
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 57
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 60
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 62
    const/16 v2, 0xc

    .line 64
    invoke-static {v0, v2, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 67
    move-result-object p1

    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_44
    if-lt v1, v0, :cond_47

    .line 71
    goto :goto_51

    .line 72
    :cond_47
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 74
    aget-object v2, v2, v1

    .line 76
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_44

    .line 82
    :cond_51
    :goto_51
    return-void
.end method
