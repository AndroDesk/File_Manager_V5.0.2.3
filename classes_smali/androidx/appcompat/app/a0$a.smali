.class public final Landroidx/appcompat/app/a0$a;
.super La/b;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Landroidx/appcompat/app/a0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/a0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    invoke-direct {p0}, La/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->u:Z

    if-eqz v1, :cond_15

    iget-object v0, v0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/app/a0;->z:Lm/g;

    iget-object v2, v0, Landroidx/appcompat/app/a0;->p:Lm/a$a;

    if-eqz v2, :cond_38

    iget-object v3, v0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/app/a0$d;

    invoke-interface {v2, v3}, Lm/a$a;->a(Lm/a;)V

    iput-object v1, v0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/app/a0$d;

    iput-object v1, v0, Landroidx/appcompat/app/a0;->p:Lm/a$a;

    :cond_38
    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_43

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    :cond_43
    return-void
.end method
