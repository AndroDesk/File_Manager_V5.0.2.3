.class public Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsStorageInfo"
.end annotation


# instance fields
.field public server_name:Ljava/lang/String;

.field public share_name:Ljava/lang/String;

.field public state:I


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
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->state:I

    .line 11
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 18
    move-result v1

    .line 19
    if-eqz v0, :cond_1c

    .line 21
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 23
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->server_name:Ljava/lang/String;

    .line 29
    :cond_1c
    if-eqz v1, :cond_26

    .line 31
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 33
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->share_name:Ljava/lang/String;

    .line 39
    :cond_26
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->state:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->server_name:Ljava/lang/String;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->share_name:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 21
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->server_name:Ljava/lang/String;

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 27
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 30
    :cond_1d
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->share_name:Ljava/lang/String;

    .line 32
    if-eqz v0, :cond_26

    .line 34
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 36
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 39
    :cond_26
    return-void
.end method
