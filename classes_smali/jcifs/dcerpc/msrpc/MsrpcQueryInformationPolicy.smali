.class public Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.source "MsrpcQueryInformationPolicy.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;-><init>(Ljcifs/dcerpc/rpc$policy_handle;SLjcifs/dcerpc/ndr/NdrObject;)V

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method
