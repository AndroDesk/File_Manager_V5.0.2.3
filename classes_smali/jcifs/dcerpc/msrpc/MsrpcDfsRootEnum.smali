.class public Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
.super Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;
.source "MsrpcDfsRootEnum.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v4, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 3
    invoke-direct {v4}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;-><init>()V

    .line 6
    new-instance v5, Ljcifs/dcerpc/ndr/NdrLong;

    .line 8
    const/4 v6, 0x0

    .line 9
    invoke-direct {v5, v6}, Ljcifs/dcerpc/ndr/NdrLong;-><init>(I)V

    .line 12
    const/16 v2, 0xc8

    .line 14
    const v3, 0xffff

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    invoke-direct/range {v0 .. v5}, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;-><init>(Ljava/lang/String;IILjcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;Ljcifs/dcerpc/ndr/NdrLong;)V

    .line 22
    iget-object p1, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 24
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    .line 26
    iput v0, p1, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 28
    new-instance v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    .line 30
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;-><init>()V

    .line 33
    iput-object v0, p1, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 35
    iput v6, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 37
    const/4 p1, 0x3

    .line 38
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 40
    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .registers 8

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 3
    iget-object v0, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 5
    check-cast v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    .line 7
    iget v1, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    .line 9
    new-array v1, v1, [Ljcifs/smb/SmbShareInfo;

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    iget v4, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    .line 15
    if-lt v3, v4, :cond_11

    .line 17
    return-object v1

    .line 18
    :cond_11
    new-instance v4, Ljcifs/smb/SmbShareInfo;

    .line 20
    iget-object v5, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    .line 22
    aget-object v5, v5, v3

    .line 24
    iget-object v5, v5, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-direct {v4, v5, v2, v6}, Ljcifs/smb/SmbShareInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    aput-object v4, v1, v3

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_c
.end method
