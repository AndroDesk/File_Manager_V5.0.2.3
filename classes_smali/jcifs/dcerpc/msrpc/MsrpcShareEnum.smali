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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;-><init>()V

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;-><init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;III)V

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .registers 6

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    iget v1, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    new-array v1, v1, [Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    const/4 v2, 0x0

    :goto_9
    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    if-lt v2, v3, :cond_e

    return-object v1

    :cond_e
    new-instance v3, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    iget-object v4, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v4, v4, v2

    invoke-direct {v3, p0, v4}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;-><init>(Ljcifs/dcerpc/msrpc/MsrpcShareEnum;Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method
