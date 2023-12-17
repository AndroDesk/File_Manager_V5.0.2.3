.class Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;
.super Ljava/lang/Object;
.source "GLLayerScreenElement.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLRenderer"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/GLLayerScreenElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_24
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    iget-object p1, p1, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->doneRender()V

    :cond_2d
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    int-to-double p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p2

    if-eqz p2, :cond_24

    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method
