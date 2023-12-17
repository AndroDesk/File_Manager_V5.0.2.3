.class public Landroidx/activity/g;
.super Landroid/app/Dialog;
.source "ComponentDialog.kt"

# interfaces
.implements Landroidx/lifecycle/m;
.implements Landroidx/activity/j;


# instance fields
.field private _lifecycleRegistry:Landroidx/lifecycle/n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/activity/g;-><init>(Landroid/content/Context;IILi3/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher;

    new-instance p2, Landroidx/activity/b;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/g;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILi3/e;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-direct {p0, p1, p2}, Landroidx/activity/g;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Landroidx/activity/g;)V
    .registers 1

    invoke-static {p0}, Landroidx/activity/g;->onBackPressedDispatcher$lambda-1(Landroidx/activity/g;)V

    return-void
.end method

.method private final getLifecycleRegistry()Landroidx/lifecycle/n;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/g;->_lifecycleRegistry:Landroidx/lifecycle/n;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/lifecycle/n;

    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    .line 10
    iput-object v0, p0, Landroidx/activity/g;->_lifecycleRegistry:Landroidx/lifecycle/n;

    .line 12
    :cond_b
    return-object v0
.end method

.method private static synthetic getOnBackPressedDispatcher$annotations()V
    .registers 0

    return-void
.end method

.method private final initViewTreeOwners()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    sget v1, Ly0/a;->view_tree_lifecycle_owner:I

    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "window!!.decorView"

    .line 30
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v1, Landroidx/activity/k;->view_tree_on_back_pressed_dispatcher_owner:I

    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    return-void
.end method

.method private static final onBackPressedDispatcher$lambda-1(Landroidx/activity/g;)V
    .registers 2

    .line 1
    const-string v0, "this$0"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 9
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Landroidx/activity/g;->initViewTreeOwners()V

    .line 9
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/activity/g;->getLifecycleRegistry()Landroidx/lifecycle/n;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/g;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/g;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    .line 6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v0, 0x21

    .line 8
    if-lt p1, v0, :cond_14

    .line 10
    iget-object p1, p0, Landroidx/activity/g;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p1, Landroidx/activity/OnBackPressedDispatcher;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 18
    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    .line 21
    :cond_14
    invoke-direct {p0}, Landroidx/activity/g;->getLifecycleRegistry()Landroidx/lifecycle/n;

    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 27
    invoke-virtual {p1, v0}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 30
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 4
    invoke-direct {p0}, Landroidx/activity/g;->getLifecycleRegistry()Landroidx/lifecycle/n;

    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 13
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/g;->getLifecycleRegistry()Landroidx/lifecycle/n;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/activity/g;->_lifecycleRegistry:Landroidx/lifecycle/n;

    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 16
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/activity/g;->initViewTreeOwners()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/activity/g;->initViewTreeOwners()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Landroidx/activity/g;->initViewTreeOwners()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
