.class final Ljcifs/netbios/NbtAddress$CacheEntry;
.super Ljava/lang/Object;
.source "NbtAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/netbios/NbtAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheEntry"
.end annotation


# instance fields
.field public address:Ljcifs/netbios/NbtAddress;

.field public expiration:J

.field public hostName:Ljcifs/netbios/Name;


# direct methods
.method public constructor <init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->hostName:Ljcifs/netbios/Name;

    .line 6
    iput-object p2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 8
    iput-wide p3, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    .line 10
    return-void
.end method
