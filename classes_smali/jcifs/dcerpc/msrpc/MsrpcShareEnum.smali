.class public Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;
.source "MsrpcShareEnum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "\\\\"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    new-instance v5, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    .line 17
    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;-><init>()V

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v6, -0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    move-object v2, p0

    .line 25
    invoke-direct/range {v2 .. v8}, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;-><init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;III)V

    .line 28
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 31
    const/4 p1, 0x3

    .line 32
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 34
    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 3
    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    .line 5
    iget v1, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    .line 7
    new-array v1, v1, [Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    .line 12
    if-lt v2, v3, :cond_e

    .line 14
    return-object v1

    .line 15
    :cond_e
    new-instance v3, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    .line 17
    iget-object v4, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    .line 19
    aget-object v4, v4, v2

    .line 21
    invoke-direct {v3, p0, v4}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;-><init>(Ljcifs/dcerpc/msrpc/MsrpcShareEnum;Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V

    .line 24
    aput-object v3, v1, v2

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_9
.end method
