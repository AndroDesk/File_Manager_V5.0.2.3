.class public Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
.super Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;
.source "MsrpcDfsRootEnum.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    new-instance v4, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-direct {v4}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;-><init>()V

    new-instance v5, Ljcifs/dcerpc/ndr/NdrLong;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljcifs/dcerpc/ndr/NdrLong;-><init>(I)V

    const/16 v2, 0xc8

    const v3, 0xffff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;-><init>(Ljava/lang/String;IILjcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;Ljcifs/dcerpc/ndr/NdrLong;)V

    iget-object p1, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    iput v0, p1, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    new-instance v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;-><init>()V

    iput-object v0, p1, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    iput v6, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .registers 8

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    iget v1, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    new-array v1, v1, [Ljcifs/smb/SmbShareInfo;

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    iget v4, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    if-lt v3, v4, :cond_11

    return-object v1

    :cond_11
    new-instance v4, Ljcifs/smb/SmbShareInfo;

    iget-object v5, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    aget-object v5, v5, v3

    iget-object v5, v5, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v2, v6}, Ljcifs/smb/SmbShareInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c
.end method
