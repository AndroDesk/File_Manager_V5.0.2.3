.class public Landroidx/appcompat/view/menu/k$a;
.super Lm0/b;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Landroidx/appcompat/view/menu/k;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/k;Landroid/view/ActionProvider;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/k$a;->c:Landroidx/appcompat/view/menu/k;

    .line 3
    invoke-direct {p0}, Lm0/b;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 3
    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 3
    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 3
    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f(Landroid/view/SubMenu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/k$a;->c:Landroidx/appcompat/view/menu/k;

    .line 5
    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/c;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 12
    return-void
.end method
