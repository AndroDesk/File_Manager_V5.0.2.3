.class public Ljcifs/dcerpc/msrpc/SamrAliasHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SamrAliasHandle.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    .registers 6

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;

    invoke-direct {v0, p2, p3, p4, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;-><init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;IILjcifs/dcerpc/msrpc/SamrAliasHandle;)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget p1, v0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->retval:I

    if-nez p1, :cond_10

    return-void

    :cond_10
    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, v0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->retval:I

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method
