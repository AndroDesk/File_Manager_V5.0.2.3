.class public Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
.super Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;
.source "MsrpcGetMembersInAlias.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;-><init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    iput-object p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method
