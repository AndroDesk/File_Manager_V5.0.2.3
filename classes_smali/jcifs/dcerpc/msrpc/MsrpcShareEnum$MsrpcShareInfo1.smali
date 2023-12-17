.class Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
.super Ljcifs/smb/SmbShareInfo;
.source "MsrpcShareEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsrpcShareInfo1"
.end annotation


# instance fields
.field public final synthetic this$0:Ljcifs/dcerpc/msrpc/MsrpcShareEnum;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/MsrpcShareEnum;Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;->this$0:Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    .line 3
    invoke-direct {p0}, Ljcifs/smb/SmbShareInfo;-><init>()V

    .line 6
    iget-object p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->netname:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 10
    iget p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->type:I

    .line 12
    iput p1, p0, Ljcifs/smb/SmbShareInfo;->type:I

    .line 14
    iget-object p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->remark:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    .line 18
    return-void
.end method
