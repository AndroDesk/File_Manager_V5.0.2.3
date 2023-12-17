.class public Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;
.source "MsrpcShareGetInfo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    .line 3
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;-><init>()V

    .line 6
    const/16 v1, 0x1f6

    .line 8
    invoke-direct {p0, p1, p2, v1, v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V

    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 14
    const/4 p1, 0x3

    .line 15
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 17
    return-void
.end method


# virtual methods
.method public getSecurity()[Ljcifs/smb/ACE;
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 3
    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    .line 5
    iget-object v1, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    .line 7
    if-eqz v1, :cond_13

    .line 9
    new-instance v2, Ljcifs/smb/SecurityDescriptor;

    .line 11
    const/4 v3, 0x0

    .line 12
    iget v0, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    .line 14
    invoke-direct {v2, v1, v3, v0}, Ljcifs/smb/SecurityDescriptor;-><init>([BII)V

    .line 17
    iget-object v0, v2, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 19
    return-object v0

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method
