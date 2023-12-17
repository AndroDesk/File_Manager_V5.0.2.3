.class public Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetrDfsEnumEx"
.end annotation


# instance fields
.field public dfs_name:Ljava/lang/String;

.field public info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

.field public level:I

.field public prefmaxlen:I

.field public retval:I

.field public totalentries:Ljcifs/dcerpc/ndr/NdrLong;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;Ljcifs/dcerpc/ndr/NdrLong;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->dfs_name:Ljava/lang/String;

    .line 6
    iput p2, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    .line 8
    iput p3, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->prefmaxlen:I

    .line 10
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 12
    iput-object p5, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    .line 14
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 13
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;-><init>()V

    .line 16
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 18
    :cond_11
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 20
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 23
    :cond_16
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_21

    .line 29
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    .line 31
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrLong;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 34
    :cond_21
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 37
    move-result p1

    .line 38
    iput p1, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    .line 40
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->dfs_name:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    .line 8
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 11
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->prefmaxlen:I

    .line 13
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 22
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 29
    :cond_1c
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    .line 31
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 34
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    .line 36
    if-eqz v0, :cond_28

    .line 38
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrLong;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 41
    :cond_28
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0x15

    return v0
.end method
