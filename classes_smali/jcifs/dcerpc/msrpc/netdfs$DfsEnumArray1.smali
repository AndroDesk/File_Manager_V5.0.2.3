.class public Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray1"
.end annotation


# instance fields
.field public count:I

.field public s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_54

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    if-nez v2, :cond_35

    if-ltz v0, :cond_2d

    const v2, 0xffff

    if-gt v0, v2, :cond_2d

    new-array v2, v0, [Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    goto :goto_35

    :cond_2d
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_3a
    if-lt v1, v0, :cond_3d

    goto :goto_54

    :cond_3d
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v3, v2, v1

    if-nez v3, :cond_4a

    new-instance v3, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;-><init>()V

    aput-object v3, v2, v1

    :cond_4a
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_54
    :goto_54
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    if-eqz v0, :cond_2f

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v2, 0x4

    invoke-static {v0, v2, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_22
    if-lt v1, v0, :cond_25

    goto :goto_2f

    :cond_25
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2f
    :goto_2f
    return-void
.end method
