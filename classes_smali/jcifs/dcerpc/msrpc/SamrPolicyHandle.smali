.class public Ljcifs/dcerpc/msrpc/SamrPolicyHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SamrPolicyHandle.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    if-nez p2, :cond_7

    const-string p2, "\\\\"

    :cond_7
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;

    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    :try_start_c
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_f
    .catch Ljcifs/dcerpc/DcerpcException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_22

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcException;->getErrorCode()I

    move-result v1

    const v2, 0x1c010002

    if-ne v1, v2, :cond_23

    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;

    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    :goto_22
    return-void

    :cond_23
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method
