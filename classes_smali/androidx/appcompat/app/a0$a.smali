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
.method public constructor <init>(Landroidx/appcompat/app/a0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    .line 3
    invoke-direct {p0}, La/b;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->u:Z

    .line 5
    if-eqz v1, :cond_15

    .line 7
    iget-object v0, v0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_15

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 15
    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    .line 17
    iget-object v0, v0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    .line 24
    iget-object v0, v0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 26
    const/16 v1, 0x8

    .line 28
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    .line 33
    iget-object v0, v0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 39
    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, v0, Landroidx/appcompat/app/a0;->z:Lm/g;

    .line 44
    iget-object v2, v0, Landroidx/appcompat/app/a0;->p:Lm/a$a;

    .line 46
    if-eqz v2, :cond_38

    .line 48
    iget-object v3, v0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/app/a0$d;

    .line 50
    invoke-interface {v2, v3}, Lm/a$a;->a(Lm/a;)V

    .line 53
    iput-object v1, v0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/app/a0$d;

    .line 55
    iput-object v1, v0, Landroidx/appcompat/app/a0;->p:Lm/a$a;

    .line 57
    :cond_38
    iget-object v0, p0, Landroidx/appcompat/app/a0$a;->l:Landroidx/appcompat/app/a0;

    .line 59
    iget-object v0, v0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 61
    if-eqz v0, :cond_43

    .line 63
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 65
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 68
    :cond_43
    return-void
.end method
