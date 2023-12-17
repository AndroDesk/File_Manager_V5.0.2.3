.class public Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumStruct"
.end annotation


# instance fields
.field public e:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I


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
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 11
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 14
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_25

    .line 20
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 22
    if-nez v0, :cond_1e

    .line 24
    new-instance v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;

    .line 26
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;-><init>()V

    .line 29
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 31
    :cond_1e
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 33
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 35
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 38
    :cond_25
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 12
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 15
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 21
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 27
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 30
    :cond_1d
    return-void
.end method
