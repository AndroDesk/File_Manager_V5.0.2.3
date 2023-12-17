.class public Lcom/android/fileexplorer/controller/FabMenuItem;
.super Ljava/lang/Object;
.source "FabMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private menuId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/controller/FabMenuItem;->menuId:I

    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/controller/FabMenuItem;->menuId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public setShowAsAction(I)V
    .registers 2

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
