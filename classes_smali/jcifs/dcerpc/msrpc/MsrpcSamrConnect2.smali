.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect2;
.source "MsrpcSamrConnect2.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/rpc$policy_handle;)V

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method
