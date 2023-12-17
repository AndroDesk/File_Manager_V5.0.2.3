.class public Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.source "MsrpcQueryInformationPolicy.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;-><init>(Ljcifs/dcerpc/rpc$policy_handle;SLjcifs/dcerpc/ndr/NdrObject;)V

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
