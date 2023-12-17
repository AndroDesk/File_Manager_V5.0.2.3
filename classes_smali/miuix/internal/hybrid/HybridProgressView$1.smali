.class Lmiuix/internal/hybrid/HybridProgressView$1;
.super Landroid/os/Handler;
.source "HybridProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/hybrid/HybridProgressView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/hybrid/HybridProgressView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_a2

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result p1

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {v1}, Lmiuix/internal/hybrid/HybridProgressView;->access$100(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result v1

    const-wide/16 v2, 0x28

    if-ge p1, v1, :cond_5a

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$100(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result v1

    iget-object v4, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {v4}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result v4

    iget-object v5, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {v5}, Lmiuix/internal/hybrid/HybridProgressView;->access$200(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Lmiuix/internal/hybrid/HybridProgressView;->access$002(Lmiuix/internal/hybrid/HybridProgressView;I)I

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$300(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {v4}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result v4

    mul-int/2addr v4, v1

    div-int/lit16 v4, v4, 0x2710

    iput v4, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$400(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a2

    :cond_5a
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result p1

    const/16 v1, 0x251c

    if-gt p1, v1, :cond_a2

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result p1

    const/16 v1, 0x320

    if-lt p1, v1, :cond_a2

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-static {p1, v1}, Lmiuix/internal/hybrid/HybridProgressView;->access$002(Lmiuix/internal/hybrid/HybridProgressView;I)I

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$300(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {v4}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    move-result v4

    mul-int/2addr v4, v1

    div-int/lit16 v4, v4, 0x2710

    iput v4, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$400(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a2
    :goto_a2
    return-void
.end method
