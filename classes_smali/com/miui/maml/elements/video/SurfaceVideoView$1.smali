.class Lcom/miui/maml/elements/video/SurfaceVideoView$1;
.super Ljava/lang/Object;
.source "SurfaceVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/video/SurfaceVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/video/SurfaceVideoView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/video/SurfaceVideoView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView$1;->this$0:Lcom/miui/maml/elements/video/SurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView$1;->this$0:Lcom/miui/maml/elements/video/SurfaceVideoView;

    invoke-static {v0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->access$000(Lcom/miui/maml/elements/video/SurfaceVideoView;)V

    return-void
.end method
