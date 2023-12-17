.class public Ljcifs/dcerpc/msrpc/netdfs;
.super Ljava/lang/Object;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;,
        Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;
    }
.end annotation


# static fields
.field public static final DFS_STORAGE_STATE_ACTIVE:I

.field public static final DFS_STORAGE_STATE_OFFLINE:I

.field public static final DFS_STORAGE_STATE_ONLINE:I

.field public static final DFS_VOLUME_FLAVOR_AD_BLOB:I

.field public static final DFS_VOLUME_FLAVOR_STANDALONE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/netdfs;->DFS_STORAGE_STATE_ACTIVE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/netdfs;->DFS_STORAGE_STATE_OFFLINE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/netdfs;->DFS_STORAGE_STATE_ONLINE:I

    const v0, 0x92f96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/netdfs;->DFS_VOLUME_FLAVOR_AD_BLOB:I

    const v0, 0x92c96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/netdfs;->DFS_VOLUME_FLAVOR_STANDALONE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .registers 1

    const-string v0, "4fc742e0-4a10-11cf-8273-00aa004ae673:3.0"

    return-object v0
.end method
