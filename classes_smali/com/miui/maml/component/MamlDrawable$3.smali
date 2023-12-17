.class Lcom/miui/maml/component/MamlDrawable$3;
.super Lcom/miui/maml/RenderUpdater;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/component/MamlDrawable;-><init>(Lcom/miui/maml/ScreenElementRoot;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/component/MamlDrawable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/component/MamlDrawable;Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/maml/RenderUpdater;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    .line 6
    return-void
.end method


# virtual methods
.method public doRenderImp()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 9
    invoke-static {v1}, Lcom/miui/maml/component/MamlDrawable;->access$100(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 18
    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 24
    invoke-static {v1}, Lcom/miui/maml/component/MamlDrawable;->access$100(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    .line 27
    move-result-object v1

    .line 28
    const-wide/16 v2, 0x64

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 35
    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 41
    invoke-static {v1}, Lcom/miui/maml/component/MamlDrawable;->access$300(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
