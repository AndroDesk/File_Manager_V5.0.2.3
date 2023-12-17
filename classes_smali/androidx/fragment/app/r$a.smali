.class public final Landroidx/fragment/app/r$a;
.super Ljava/lang/Object;
.source "FragmentLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/r;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/y;

.field public final synthetic b:Landroidx/fragment/app/r;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/r;Landroidx/fragment/app/y;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/r$a;->b:Landroidx/fragment/app/r;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/y;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/y;

    .line 3
    iget-object v0, p1, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/y;->k()V

    .line 8
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/r$a;->b:Landroidx/fragment/app/r;

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/FragmentManager;

    .line 20
    invoke-static {p1, v0}, Landroidx/fragment/app/SpecialEffectsController;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController;->e()V

    .line 27
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
