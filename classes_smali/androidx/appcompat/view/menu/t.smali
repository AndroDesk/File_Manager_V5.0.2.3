.class public final Landroidx/appcompat/view/menu/t;
.super Landroidx/appcompat/view/menu/p;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final e:Lh0/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh0/c;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;Lh0/a;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    return-void
.end method


# virtual methods
.method public final clearHeader()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->e:Lh0/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
