.class Ljcifs/dcerpc/msrpc/LsarSidArrayX;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;
.source "LsarSidArrayX.java"


# direct methods
.method public constructor <init>([Ljcifs/smb/SID;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    .line 4
    array-length v0, p1

    .line 5
    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    .line 7
    array-length v0, p1

    .line 8
    new-array v0, v0, [Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    .line 10
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_c
    array-length v1, p1

    .line 14
    if-lt v0, v1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    .line 19
    new-instance v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    .line 21
    invoke-direct {v2}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;-><init>()V

    .line 24
    aput-object v2, v1, v0

    .line 26
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    .line 28
    aget-object v1, v1, v0

    .line 30
    aget-object v2, p1, v0

    .line 32
    iput-object v2, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_c
.end method
