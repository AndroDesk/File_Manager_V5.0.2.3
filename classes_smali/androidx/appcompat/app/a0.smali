.class public final Landroidx/appcompat/app/a0;
.super Landroidx/appcompat/app/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/a0$e;,
        Landroidx/appcompat/app/a0$d;
    }
.end annotation


# static fields
.field public static final F:Landroid/view/animation/AccelerateInterpolator;

.field public static final G:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Landroidx/appcompat/app/a0$a;

.field public final D:Landroidx/appcompat/app/a0$b;

.field public final E:Landroidx/appcompat/app/a0$c;

.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroid/app/Activity;

.field public d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public e:Landroidx/appcompat/widget/ActionBarContainer;

.field public f:Landroidx/appcompat/widget/d0;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public h:Landroid/view/View;

.field public i:Landroidx/appcompat/widget/r0;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a0$e;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroidx/appcompat/app/a0$e;

.field public l:I

.field public m:Z

.field public n:Landroidx/appcompat/app/a0$d;

.field public o:Landroidx/appcompat/app/a0$d;

.field public p:Lm/a$a;

.field public q:Z

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Lm/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/a0;->F:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/a0;->G:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/a0;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/a0;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->u:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->y:Z

    new-instance v0, Landroidx/appcompat/app/a0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$a;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->C:Landroidx/appcompat/app/a0$a;

    new-instance v0, Landroidx/appcompat/app/a0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$b;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->D:Landroidx/appcompat/app/a0$b;

    new-instance v0, Landroidx/appcompat/app/a0$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$c;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->E:Landroidx/appcompat/app/a0$c;

    iput-object p1, p0, Landroidx/appcompat/app/a0;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->a(Landroid/view/View;)V

    if-nez p2, :cond_49

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    :cond_49
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/a0;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/a0;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->u:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->y:Z

    new-instance v0, Landroidx/appcompat/app/a0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$a;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->C:Landroidx/appcompat/app/a0$a;

    new-instance v0, Landroidx/appcompat/app/a0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$b;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->D:Landroidx/appcompat/app/a0$b;

    new-instance v0, Landroidx/appcompat/app/a0$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$c;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->E:Landroidx/appcompat/app/a0$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 7

    sget v0, Lh/f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    :cond_f
    sget v0, Lh/f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/widget/d0;

    if-eqz v1, :cond_1c

    check-cast v0, Landroidx/appcompat/widget/d0;

    goto :goto_26

    :cond_1c
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_c9

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/d0;

    move-result-object v0

    :goto_26
    iput-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    sget v0, Lh/f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Lh/f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_ac

    iget-object v1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_ac

    if-eqz p1, :cond_ac

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->z()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    move p1, v0

    goto :goto_5b

    :cond_5a
    move p1, v1

    :goto_5b
    if-eqz p1, :cond_5f

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->m:Z

    :cond_5f
    iget-object v2, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_6d

    move v3, v0

    goto :goto_6e

    :cond_6d
    move v3, v1

    :goto_6e
    if-nez v3, :cond_75

    if-eqz p1, :cond_73

    goto :goto_75

    :cond_73
    move p1, v1

    goto :goto_76

    :cond_75
    :goto_75
    move p1, v0

    :goto_76
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setHomeButtonEnabled(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lh/b;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setHasEmbeddedTabs(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lh/j;->ActionBar:[I

    sget v4, Lh/a;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Lh/j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->setHideOnContentScrollEnabled(Z)V

    :cond_9c
    sget v0, Lh/j;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_a8

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->setElevation(F)V

    :cond_a8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_ac
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/appcompat/app/a0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_dc

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    :cond_dc
    const-string v0, "null"

    :goto_de
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->addTab(Landroidx/appcompat/app/a$d;Z)V

    return-void
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;I)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/app/a0;->addTab(Landroidx/appcompat/app/a$d;IZ)V

    return-void
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;IZ)V
    .registers 8

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->ensureTabsExist()V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/r0;->a(Landroidx/appcompat/app/a$d;Z)Landroidx/appcompat/widget/r0$c;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    new-instance v3, Landroidx/appcompat/widget/i0$a;

    invoke-direct {v3}, Landroidx/appcompat/widget/i0$a;-><init>()V

    invoke-virtual {v2, v1, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/r0$a;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_21
    if-eqz p3, :cond_27

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/r0$c;->setSelected(Z)V

    :cond_27
    iget-boolean v1, v0, Landroidx/appcompat/widget/r0;->e:Z

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2e
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/a0;->configureTab(Landroidx/appcompat/app/a$d;I)V

    if-eqz p3, :cond_36

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    :cond_36
    return-void
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;Z)V
    .registers 7

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->ensureTabsExist()V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/r0;->a(Landroidx/appcompat/app/a$d;Z)Landroidx/appcompat/widget/r0$c;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    new-instance v3, Landroidx/appcompat/widget/i0$a;

    invoke-direct {v3}, Landroidx/appcompat/widget/i0$a;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/r0$a;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_21
    if-eqz p2, :cond_27

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/r0$c;->setSelected(Z)V

    :cond_27
    iget-boolean v1, v0, Landroidx/appcompat/widget/r0;->e:Z

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2e
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->configureTab(Landroidx/appcompat/app/a$d;I)V

    if-eqz p2, :cond_3c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    :cond_3c
    return-void
.end method

.method public final animateToMode(Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->x:Z

    if-nez v1, :cond_25

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->x:Z

    iget-object v2, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    goto :goto_25

    :cond_15
    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->x:Z

    if-eqz v1, :cond_25

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->x:Z

    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_22

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    :cond_25
    :goto_25
    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lm0/g0$g;->c(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_8a

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_45

    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p1, v2, v4, v5}, Landroidx/appcompat/widget/d0;->t(IJ)Lm0/o0;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Landroidx/appcompat/widget/a;->e(IJ)Lm0/o0;

    move-result-object v0

    goto :goto_51

    :cond_45
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p1, v0, v6, v7}, Landroidx/appcompat/widget/d0;->t(IJ)Lm0/o0;

    move-result-object v0

    iget-object p1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Landroidx/appcompat/widget/a;->e(IJ)Lm0/o0;

    move-result-object p1

    :goto_51
    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V

    iget-object v2, v1, Lm/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_70

    :cond_6e
    const-wide/16 v2, 0x0

    :goto_70
    iget-object p1, v0, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_81

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_81
    iget-object p1, v1, Lm/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lm/g;->b()V

    goto :goto_a1

    :cond_8a
    if-eqz p1, :cond_97

    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p1, v2}, Landroidx/appcompat/widget/d0;->w(I)V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_a1

    :cond_97
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/d0;->w(I)V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_a1
    return-void
.end method

.method public final collapseActionView()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->l()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final configureTab(Landroidx/appcompat/app/a$d;I)V
    .registers 4

    check-cast p1, Landroidx/appcompat/app/a0$e;

    iget-object v0, p1, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    if-eqz v0, :cond_23

    iput p2, p1, Landroidx/appcompat/app/a0$e;->f:I

    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_13
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_22

    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0$e;

    iput p2, v0, Landroidx/appcompat/app/a0$e;->f:I

    goto :goto_13

    :cond_22
    return-void

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action Bar Tab must have a Callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dispatchMenuVisibilityChanged(Z)V
    .registers 4

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->q:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->q:Z

    iget-object p1, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_1e

    iget-object v1, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/a$b;

    invoke-interface {v1}, Landroidx/appcompat/app/a$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public final ensureTabsExist()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroidx/appcompat/widget/r0;

    iget-object v1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/r0;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/d0;->i(Landroidx/appcompat/widget/r0;)V

    goto :goto_38

    :cond_1a
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_33

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lm0/g0$h;->c(Landroid/view/View;)V

    goto :goto_33

    :cond_2e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_33
    :goto_33
    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/r0;)V

    :goto_38
    iput-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayOptions()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->z()I

    move-result v0

    return v0
.end method

.method public final getElevation()F
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$i;->i(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getHideOffset()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public final getNavigationItemCount()I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->E()I

    move-result v0

    return v0
.end method

.method public final getNavigationMode()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    move-result v0

    return v0
.end method

.method public final getSelectedNavigationIndex()I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    if-eqz v0, :cond_14

    iget v2, v0, Landroidx/appcompat/app/a0$e;->f:I

    :cond_14
    return v2

    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->A()I

    move-result v0

    return v0
.end method

.method public final getSelectedTab()Landroidx/appcompat/app/a$d;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->y()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTabAt(I)Landroidx/appcompat/app/a$d;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a$d;

    return-object p1
.end method

.method public final getTabCount()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getThemedContext()Landroid/content/Context;
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/a0;->b:Landroid/content/Context;

    if-nez v0, :cond_27

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lh/a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_23

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/a0;->b:Landroid/content/Context;

    goto :goto_27

    :cond_23
    iget-object v0, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/a0;->b:Landroid/content/Context;

    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/appcompat/app/a0;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hide()V
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method public final isHideOnContentScrollEnabled()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    return v0
.end method

.method public final isShowing()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getHeight()I

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->y:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public final isTitleTruncated()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final newTab()Landroidx/appcompat/app/a$d;
    .registers 2

    new-instance v0, Landroidx/appcompat/app/a0$e;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$e;-><init>(Landroidx/appcompat/app/a0;)V

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lh/b;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public final onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    if-eqz v0, :cond_27

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_12

    :cond_11
    const/4 v2, -0x1

    :goto_12
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_27
    return v1
.end method

.method public final removeAllTabs()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    if-eqz v0, :cond_2a

    iget-object v1, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, v0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/r0$a;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_23
    iget-boolean v1, v0, Landroidx/appcompat/widget/r0;->e:Z

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2a
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/a0;->l:I

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTab(Landroidx/appcompat/app/a$d;)V
    .registers 2

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->removeTabAt(I)V

    return-void
.end method

.method public final removeTabAt(I)V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    if-eqz v1, :cond_c

    iget v1, v1, Landroidx/appcompat/app/a0$e;->f:I

    goto :goto_e

    :cond_c
    iget v1, p0, Landroidx/appcompat/app/a0;->l:I

    :goto_e
    iget-object v2, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, v0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/r0$a;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_20
    iget-boolean v2, v0, Landroidx/appcompat/widget/r0;->e:Z

    if-eqz v2, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_27
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0$e;

    const/4 v2, -0x1

    if-eqz v0, :cond_34

    iput v2, v0, Landroidx/appcompat/app/a0$e;->f:I

    :cond_34
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, p1

    :goto_3b
    if-ge v3, v0, :cond_4a

    iget-object v4, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/app/a0$e;

    iput v3, v4, Landroidx/appcompat/app/a0$e;->f:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_4a
    if-ne v1, p1, :cond_67

    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 p1, 0x0

    goto :goto_64

    :cond_56
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a$d;

    :goto_64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    :cond_67
    return-void
.end method

.method public final requestFocus()Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->x()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final selectTab(Landroidx/appcompat/app/a$d;)V
    .registers 5

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v1

    :cond_e
    iput v1, p0, Landroidx/appcompat/app/a0;->l:I

    return-void

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Landroid/app/Activity;

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->x()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v2}, Landroidx/fragment/app/b0;->g()V

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    if-ne v0, p1, :cond_61

    if-eqz v0, :cond_80

    iget-object v1, v0, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/app/a$e;->onTabReselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result p1

    iget-object v1, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, v0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    if-eqz v1, :cond_56

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_56
    new-instance v1, Landroidx/appcompat/widget/q0;

    invoke-direct {v1, v0, p1}, Landroidx/appcompat/widget/q0;-><init>(Landroidx/appcompat/widget/r0;Landroid/view/View;)V

    iput-object v1, v0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_80

    :cond_61
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v1

    :cond_69
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/r0;->setTabSelected(I)V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    if-eqz v0, :cond_75

    iget-object v1, v0, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/app/a$e;->onTabUnselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    :cond_75
    check-cast p1, Landroidx/appcompat/app/a0$e;

    iput-object p1, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    if-eqz p1, :cond_80

    iget-object v0, p1, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    invoke-interface {v0, p1, v2}, Landroidx/appcompat/app/a$e;->onTabSelected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    :cond_80
    :goto_80
    if-eqz v2, :cond_8d

    iget-object p1, v2, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8d

    invoke-virtual {v2}, Landroidx/fragment/app/a;->p()I

    :cond_8d
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCustomView(I)V
    .registers 5

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v1}, Landroidx/appcompat/widget/d0;->x()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public final setCustomView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public final setCustomView(Landroid/view/View;Landroidx/appcompat/app/a$a;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p2, p1}, Landroidx/appcompat/widget/d0;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public final setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->m:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    return-void
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .registers 3

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    return-void
.end method

.method public final setDisplayOptions(I)V
    .registers 3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->m:Z

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->n(I)V

    return-void
.end method

.method public final setDisplayOptions(II)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->z()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->m:Z

    :cond_d
    iget-object v1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/d0;->n(I)V

    return-void
.end method

.method public final setDisplayShowCustomEnabled(Z)V
    .registers 3

    const/16 v0, 0x10

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    return-void
.end method

.method public final setDisplayShowHomeEnabled(Z)V
    .registers 3

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    return-void
.end method

.method public final setDisplayShowTitleEnabled(Z)V
    .registers 3

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    return-void
.end method

.method public final setDisplayUseLogoEnabled(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    return-void
.end method

.method public final setElevation(F)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p1}, Lm0/g0$i;->s(Landroid/view/View;F)V

    return-void
.end method

.method public final setHasEmbeddedTabs(Z)V
    .registers 6

    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->s:Z

    const/4 v0, 0x0

    if-nez p1, :cond_12

    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/d0;->i(Landroidx/appcompat/widget/r0;)V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/r0;)V

    goto :goto_1e

    :cond_12
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/r0;)V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/d0;->i(Landroidx/appcompat/widget/r0;)V

    :goto_1e
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_29

    move p1, v1

    goto :goto_2a

    :cond_29
    move p1, v2

    :goto_2a
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    if-eqz v0, :cond_42

    if-eqz p1, :cond_3d

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_42

    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    goto :goto_42

    :cond_3d
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_42
    :goto_42
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    iget-boolean v3, p0, Landroidx/appcompat/app/a0;->s:Z

    if-nez v3, :cond_4c

    if-eqz p1, :cond_4c

    move v3, v1

    goto :goto_4d

    :cond_4c
    move v3, v2

    :goto_4d
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/d0;->H(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Landroidx/appcompat/app/a0;->s:Z

    if-nez v3, :cond_59

    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final setHideOffset(I)V
    .registers 3

    if-eqz p1, :cond_11

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_11
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public final setHideOnContentScrollEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_11

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_11
    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->B:Z

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public final setHomeActionContentDescription(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->B(I)V

    return-void
.end method

.method public final setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHomeAsUpIndicator(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->v(I)V

    return-void
.end method

.method public final setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->G(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setHomeButtonEnabled(Z)V
    .registers 2

    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->j()V

    return-void
.end method

.method public final setIcon(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setIcon(I)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/a$c;)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    new-instance v1, Landroidx/appcompat/app/v;

    invoke-direct {v1, p2}, Landroidx/appcompat/app/v;-><init>(Landroidx/appcompat/app/a$c;)V

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/widget/d0;->D(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/v;)V

    return-void
.end method

.method public final setLogo(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->r(I)V

    return-void
.end method

.method public final setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->k(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setNavigationMode(I)V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_1b

    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/app/a0;->l:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    iget-object v2, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1b
    if-eq v0, p1, :cond_2a

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->s:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2a

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->u(I)V

    const/4 v0, 0x0

    if-eq p1, v1, :cond_33

    goto :goto_45

    :cond_33
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->ensureTabsExist()V

    iget-object v2, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget v2, p0, Landroidx/appcompat/app/a0;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/a0;->setSelectedNavigationItem(I)V

    iput v3, p0, Landroidx/appcompat/app/a0;->l:I

    :cond_45
    :goto_45
    iget-object v2, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_50

    iget-boolean v4, p0, Landroidx/appcompat/app/a0;->s:Z

    if-nez v4, :cond_50

    move v4, v3

    goto :goto_51

    :cond_50
    move v4, v0

    :goto_51
    invoke-interface {v2, v4}, Landroidx/appcompat/widget/d0;->H(Z)V

    iget-object v2, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-ne p1, v1, :cond_5d

    iget-boolean p1, p0, Landroidx/appcompat/app/a0;->s:Z

    if-nez p1, :cond_5d

    move v0, v3

    :cond_5d
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final setSelectedNavigationItem(I)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a$d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    goto :goto_25

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->q(I)V

    :goto_25
    return-void
.end method

.method public final setShowHideAnimationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->A:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lm/g;->a()V

    :cond_b
    return-void
.end method

.method public final setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public final setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final show()V
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method public final startActionMode(Lm/a$a;)Lm/a;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/appcompat/app/a0$d;->a()V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    new-instance v0, Landroidx/appcompat/app/a0$d;

    iget-object v1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/a0$d;-><init>(Landroidx/appcompat/app/a0;Landroid/content/Context;Lm/a$a;)V

    iget-object p1, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    :try_start_22
    iget-object p1, v0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    iget-object v1, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-interface {p1, v0, v1}, Lm/a$a;->b(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_42

    iget-object v1, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    if-eqz p1, :cond_40

    iput-object v0, p0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0$d;->g()V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lm/a;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->animateToMode(Z)V

    return-object v0

    :cond_40
    const/4 p1, 0x0

    return-object p1

    :catchall_42
    move-exception p1

    iget-object v0, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    throw p1
.end method

.method public final updateVisibility(Z)V
    .registers 10

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->w:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->x:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_c

    :cond_a
    move v0, v4

    goto :goto_11

    :cond_c
    if-nez v0, :cond_10

    if-eqz v1, :cond_a

    :cond_10
    move v0, v3

    :goto_11
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000  # 1.0f

    const-wide/16 v5, 0xfa

    const/4 v7, 0x0

    if-eqz v0, :cond_e3

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->y:Z

    if-nez v0, :cond_182

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->y:Z

    iget-object v0, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lm/g;->a()V

    :cond_26
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroidx/appcompat/app/a0;->t:I

    const/4 v3, 0x0

    if-nez v0, :cond_be

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->A:Z

    if-nez v0, :cond_36

    if-eqz p1, :cond_be

    :cond_36
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_53

    new-array p1, v1, [I

    fill-array-data p1, :array_184

    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v4

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_53
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lm/g;

    invoke-direct {p1}, Lm/g;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    move-result-object v1

    invoke-virtual {v1, v3}, Lm0/o0;->e(F)V

    iget-object v2, p0, Landroidx/appcompat/app/a0;->E:Landroidx/appcompat/app/a0$c;

    iget-object v4, v1, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_80

    if-eqz v2, :cond_79

    new-instance v7, Lm0/m0;

    invoke-direct {v7, v2, v4}, Lm0/m0;-><init>(Landroidx/appcompat/app/a0$c;Landroid/view/View;)V

    :cond_79
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-static {v2, v7}, Lm0/o0$a;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_80
    iget-boolean v2, p1, Lm/g;->e:Z

    if-nez v2, :cond_89

    iget-object v2, p1, Lm/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->u:Z

    if-eqz v1, :cond_a6

    iget-object v1, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    if-eqz v1, :cond_a6

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    invoke-static {v0}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lm0/o0;->e(F)V

    iget-boolean v1, p1, Lm/g;->e:Z

    if-nez v1, :cond_a6

    iget-object v1, p1, Lm/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    sget-object v0, Landroidx/appcompat/app/a0;->G:Landroid/view/animation/DecelerateInterpolator;

    iget-boolean v1, p1, Lm/g;->e:Z

    if-nez v1, :cond_ae

    iput-object v0, p1, Lm/g;->c:Landroid/view/animation/Interpolator;

    :cond_ae
    if-nez v1, :cond_b2

    iput-wide v5, p1, Lm/g;->b:J

    :cond_b2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->D:Landroidx/appcompat/app/a0$b;

    if-nez v1, :cond_b8

    iput-object v0, p1, Lm/g;->d:Lm0/p0;

    :cond_b8
    iput-object p1, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    invoke-virtual {p1}, Lm/g;->b()V

    goto :goto_d8

    :cond_be
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Landroidx/appcompat/app/a0;->u:Z

    if-eqz p1, :cond_d3

    iget-object p1, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    if-eqz p1, :cond_d3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_d3
    iget-object p1, p0, Landroidx/appcompat/app/a0;->D:Landroidx/appcompat/app/a0$b;

    invoke-virtual {p1}, Landroidx/appcompat/app/a0$b;->onAnimationEnd()V

    :goto_d8
    iget-object p1, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_182

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$h;->c(Landroid/view/View;)V

    goto/16 :goto_182

    :cond_e3
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->y:Z

    if-eqz v0, :cond_182

    iput-boolean v3, p0, Landroidx/appcompat/app/a0;->y:Z

    iget-object v0, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    if-eqz v0, :cond_f0

    invoke-virtual {v0}, Lm/g;->a()V

    :cond_f0
    iget v0, p0, Landroidx/appcompat/app/a0;->t:I

    if-nez v0, :cond_17d

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->A:Z

    if-nez v0, :cond_fa

    if-eqz p1, :cond_17d

    :cond_fa
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_121

    new-array p1, v1, [I

    fill-array-data p1, :array_18c

    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v4

    int-to-float p1, p1

    sub-float/2addr v2, p1

    :cond_121
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lm0/o0;->e(F)V

    iget-object v1, p0, Landroidx/appcompat/app/a0;->E:Landroidx/appcompat/app/a0$c;

    iget-object v3, p1, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_144

    if-eqz v1, :cond_13d

    new-instance v7, Lm0/m0;

    invoke-direct {v7, v1, v3}, Lm0/m0;-><init>(Landroidx/appcompat/app/a0$c;Landroid/view/View;)V

    :cond_13d
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v1, v7}, Lm0/o0$a;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_144
    iget-boolean v1, v0, Lm/g;->e:Z

    if-nez v1, :cond_14d

    iget-object v1, v0, Lm/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14d
    iget-boolean p1, p0, Landroidx/appcompat/app/a0;->u:Z

    if-eqz p1, :cond_165

    iget-object p1, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    if-eqz p1, :cond_165

    invoke-static {p1}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lm0/o0;->e(F)V

    iget-boolean v1, v0, Lm/g;->e:Z

    if-nez v1, :cond_165

    iget-object v1, v0, Lm/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_165
    sget-object p1, Landroidx/appcompat/app/a0;->F:Landroid/view/animation/AccelerateInterpolator;

    iget-boolean v1, v0, Lm/g;->e:Z

    if-nez v1, :cond_16d

    iput-object p1, v0, Lm/g;->c:Landroid/view/animation/Interpolator;

    :cond_16d
    if-nez v1, :cond_171

    iput-wide v5, v0, Lm/g;->b:J

    :cond_171
    iget-object p1, p0, Landroidx/appcompat/app/a0;->C:Landroidx/appcompat/app/a0$a;

    if-nez v1, :cond_177

    iput-object p1, v0, Lm/g;->d:Lm0/p0;

    :cond_177
    iput-object v0, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    invoke-virtual {v0}, Lm/g;->b()V

    goto :goto_182

    :cond_17d
    iget-object p1, p0, Landroidx/appcompat/app/a0;->C:Landroidx/appcompat/app/a0$a;

    invoke-virtual {p1}, Landroidx/appcompat/app/a0$a;->onAnimationEnd()V

    :cond_182
    :goto_182
    return-void

    nop

    :array_184
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_18c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
