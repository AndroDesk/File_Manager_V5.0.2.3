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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/component/MamlDrawable;Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .registers 5

    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/maml/RenderUpdater;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    return-void
.end method


# virtual methods
.method public doRenderImp()V
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-static {v1}, Lcom/miui/maml/component/MamlDrawable;->access$100(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-static {v1}, Lcom/miui/maml/component/MamlDrawable;->access$100(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-static {v1}, Lcom/miui/maml/component/MamlDrawable;->access$300(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
