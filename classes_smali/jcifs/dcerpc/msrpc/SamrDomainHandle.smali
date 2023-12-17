.class public Ljcifs/dcerpc/msrpc/SamrDomainHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SamrDomainHandle.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 4
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;

    .line 6
    invoke-direct {v0, p2, p3, p4, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;-><init>(Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/msrpc/SamrDomainHandle;)V

    .line 9
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 12
    iget p1, v0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->retval:I

    .line 14
    if-nez p1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance p1, Ljcifs/smb/SmbException;

    .line 19
    iget p2, v0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->retval:I

    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-direct {p1, p2, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 25
    throw p1
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method
