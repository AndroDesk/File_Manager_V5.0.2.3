.class public Ljcifs/dcerpc/msrpc/MsrpcLookupSids;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;
.source "MsrpcLookupSids.java"


# instance fields
.field public sids:[Ljcifs/smb/SID;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    .registers 10

    .line 1
    new-instance v2, Ljcifs/dcerpc/msrpc/LsarSidArrayX;

    .line 3
    invoke-direct {v2, p2}, Ljcifs/dcerpc/msrpc/LsarSidArrayX;-><init>([Ljcifs/smb/SID;)V

    .line 6
    new-instance v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 8
    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;-><init>()V

    .line 11
    new-instance v4, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    .line 13
    invoke-direct {v4}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;-><init>()V

    .line 16
    array-length v6, p2

    .line 17
    const/4 v5, 0x1

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    invoke-direct/range {v0 .. v6}, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;-><init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;SI)V

    .line 23
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->sids:[Ljcifs/smb/SID;

    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 28
    const/4 p1, 0x3

    .line 29
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 31
    return-void
.end method
