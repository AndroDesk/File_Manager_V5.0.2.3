.class public Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererCoreInfo"
.end annotation


# instance fields
.field public accessTime:J

.field public cacheTime:J

.field public checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

.field public r:Lcom/miui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RendererCore;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide v0, 0x7fffffffffffffffL

    .line 9
    iput-wide v0, p0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 11
    iput-object p1, p0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    .line 13
    return-void
.end method
