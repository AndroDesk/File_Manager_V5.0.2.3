.class public Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;
.super Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;
.source "MsrpcSamrOpenAlias.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;IILjcifs/dcerpc/msrpc/SamrAliasHandle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;-><init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/rpc$policy_handle;)V

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method
