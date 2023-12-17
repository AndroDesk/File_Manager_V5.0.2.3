.class public Ljcifs/dcerpc/msrpc/SamrPolicyHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SamrPolicyHandle.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 4
    if-nez p2, :cond_7

    .line 6
    const-string p2, "\\\\"

    .line 8
    :cond_7
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;

    .line 10
    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    .line 13
    :try_start_c
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_f
    .catch Ljcifs/dcerpc/DcerpcException; {:try_start_c .. :try_end_f} :catch_10

    .line 16
    goto :goto_22

    .line 17
    :catch_10
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcException;->getErrorCode()I

    .line 21
    move-result v1

    .line 22
    const v2, 0x1c010002

    .line 25
    if-ne v1, v2, :cond_23

    .line 27
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;

    .line 29
    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    .line 32
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 35
    :goto_22
    return-void

    .line 36
    :cond_23
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method
