.class public Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;
.source "MsrpcLsarOpenPolicy2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/LsaPolicyHandle;)V
    .registers 5

    .line 1
    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    .line 3
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;-><init>()V

    .line 6
    invoke-direct {p0, p1, v0, p2, p3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;-><init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;ILjcifs/dcerpc/rpc$policy_handle;)V

    .line 9
    iget-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    .line 11
    const/16 p2, 0x18

    .line 13
    iput p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    .line 15
    new-instance p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 17
    invoke-direct {p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    .line 20
    const/16 p2, 0xc

    .line 22
    iput p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    .line 24
    const/4 p2, 0x2

    .line 25
    iput-short p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    .line 27
    const/4 p2, 0x1

    .line 28
    iput-byte p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    .line 30
    const/4 p2, 0x0

    .line 31
    iput-byte p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    .line 33
    iget-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    .line 35
    iput-object p1, p3, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 37
    iput p2, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 39
    const/4 p1, 0x3

    .line 40
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 42
    return-void
.end method
