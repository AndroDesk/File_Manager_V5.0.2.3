.class public Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;
.super Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;
.source "MsrpcSamrOpenDomain.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/msrpc/SamrDomainHandle;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;-><init>(Ljcifs/dcerpc/rpc$policy_handle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/rpc$policy_handle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 7
    const/4 p1, 0x3

    .line 8
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 10
    return-void
.end method
