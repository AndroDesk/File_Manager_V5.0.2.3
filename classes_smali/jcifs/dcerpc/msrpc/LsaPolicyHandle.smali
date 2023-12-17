.class public Ljcifs/dcerpc/msrpc/LsaPolicyHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "LsaPolicyHandle.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 4
    if-nez p2, :cond_7

    .line 6
    const-string p2, "\\\\"

    .line 8
    :cond_7
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;

    .line 10
    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/LsaPolicyHandle;)V

    .line 13
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 16
    iget p1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    .line 18
    if-nez p1, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance p1, Ljcifs/smb/SmbException;

    .line 23
    iget p2, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-direct {p1, p2, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 29
    throw p1
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method
