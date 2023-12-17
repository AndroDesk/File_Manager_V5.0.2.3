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
.method private constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_24

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 20
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 27
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 29
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 37
    :cond_24
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 39
    iget-object p1, p1, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 41
    if-eqz p1, :cond_2d

    .line 43
    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 46
    :cond_2d
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_38

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 20
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 23
    move-result-object p1

    .line 24
    int-to-double v0, p2

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 28
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 30
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 33
    move-result-object p1

    .line 34
    int-to-double p2, p3

    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 38
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 40
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 47
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 49
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 57
    :cond_38
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 3
    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_24

    .line 9
    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 11
    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 20
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 27
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 29
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 37
    :cond_24
    return-void
.end method
