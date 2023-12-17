.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect4;
.source "MsrpcSamrConnect4.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;-><init>(Ljava/lang/String;IILjcifs/dcerpc/rpc$policy_handle;)V

    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 8
    const/4 p1, 0x3

    .line 9
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 11
    return-void
.end method
