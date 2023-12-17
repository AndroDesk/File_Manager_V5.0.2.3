.class public Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray200"
.end annotation


# instance fields
.field public count:I

.field public s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;


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
    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    .line 11
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_54

    .line 17
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 19
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 22
    move-result v0

    .line 23
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 25
    mul-int/lit8 v2, v0, 0x4

    .line 27
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 30
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 32
    if-nez v2, :cond_35

    .line 34
    if-ltz v0, :cond_2d

    .line 36
    const v2, 0xffff

    .line 39
    if-gt v0, v2, :cond_2d

    .line 41
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 43
    iput-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 45
    goto :goto_35

    .line 46
    :cond_2d
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 48
    const-string v0, "invalid array conformance"

    .line 50
    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    :cond_35
    :goto_35
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 57
    move-result-object p1

    .line 58
    const/4 v1, 0x0

    .line 59
    :goto_3a
    if-lt v1, v0, :cond_3d

    .line 61
    goto :goto_54

    .line 62
    :cond_3d
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 64
    aget-object v3, v2, v1

    .line 66
    if-nez v3, :cond_4a

    .line 68
    new-instance v3, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 70
    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;-><init>()V

    .line 73
    aput-object v3, v2, v1

    .line 75
    :cond_4a
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 77
    aget-object v2, v2, v1

    .line 79
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_3a

    .line 85
    :cond_54
    :goto_54
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 18
    if-eqz v0, :cond_2f

    .line 20
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 22
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    .line 24
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 27
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-static {v0, v2, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_22
    if-lt v1, v0, :cond_25

    .line 37
    goto :goto_2f

    .line 38
    :cond_25
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 40
    aget-object v2, v2, v1

    .line 42
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_22

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method
