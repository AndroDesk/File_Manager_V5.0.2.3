.class public Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckCacheRunnable"
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/miui/maml/util/RendererCoreCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lcom/miui/maml/util/RendererCoreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lcom/miui/maml/util/RendererCoreCache;

    iget-object v1, p0, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/maml/util/RendererCoreCache;->access$000(Lcom/miui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    return-void
.end method
