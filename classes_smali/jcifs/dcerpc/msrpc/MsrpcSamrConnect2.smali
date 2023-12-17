.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect2;
.source "MsrpcSamrConnect2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/rpc$policy_handle;)V

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
