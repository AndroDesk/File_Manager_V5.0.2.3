.class public Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
.super Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;
.source "MsrpcGetMembersInAlias.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;-><init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    .line 4
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 9
    const/4 p1, 0x3

    .line 10
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 12
    return-void
.end method
