.class public Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;
.super Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;
.source "MsrpcEnumerateAliasesInDomain.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V
    .registers 10

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v3, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;-><init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/msrpc/samr$SamrSamArray;I)V

    .line 10
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 15
    const/4 p1, 0x3

    .line 16
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 18
    return-void
.end method
