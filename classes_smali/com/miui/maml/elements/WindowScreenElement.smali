.class public Lcom/miui/maml/elements/WindowScreenElement;
.super Lcom/miui/maml/elements/ElementGroupRC;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;,
        Lcom/miui/maml/elements/WindowScreenElement$WindowView;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Window"


# instance fields
.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

.field private mViewAdded:Z

.field private mWindowContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroupRC;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 10
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    .line 12
    new-instance p1, Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    .line 16
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/elements/WindowScreenElement$WindowView;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 21
    iget-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    .line 23
    const-string v0, "window"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/view/WindowManager;

    .line 31
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    .line 33
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 35
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 38
    move-result v0

    .line 39
    float-to-int v0, v0

    .line 40
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 43
    move-result p2

    .line 44
    float-to-int p2, p2

    .line 45
    invoke-direct {p1, v0, p2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 48
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 50
    const/4 p2, 0x1

    .line 51
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 53
    const/16 p2, 0x100

    .line 55
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 57
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/WindowScreenElement;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->addView()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/WindowScreenElement;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->removeView()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/WindowScreenElement;)Lcom/miui/maml/elements/WindowScreenElement$WindowView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 3
    return-object p0
.end method

.method private final addView()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 11
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    .line 17
    :cond_10
    return-void
.end method

.method private final removeView()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 9
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    .line 15
    :cond_e
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroupRC;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->addView()V

    .line 13
    :cond_c
    return-void
.end method

.method public onControllerCreated(Lcom/miui/maml/RendererController;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Lcom/miui/maml/elements/WindowScreenElement$1;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 10
    return-void
.end method

.method public onVisibilityChange(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/miui/maml/elements/WindowScreenElement$1;

    .line 11
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WindowScreenElement$1;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Z)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method
