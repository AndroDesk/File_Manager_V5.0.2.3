.class public final Landroidx/appcompat/view/menu/k$b;
.super Landroidx/appcompat/view/menu/k$a;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public d:Lm0/b$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/k;Landroid/view/ActionProvider;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/k$a;-><init>(Landroidx/appcompat/view/menu/k;Landroid/view/ActionProvider;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 3
    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 3
    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final h(Lm0/b$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/k$b;->d:Lm0/b$a;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 8
    return-void
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k$b;->d:Lm0/b$a;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lm0/b$a;->onActionProviderVisibilityChanged(Z)V

    .line 8
    :cond_7
    return-void
.end method
