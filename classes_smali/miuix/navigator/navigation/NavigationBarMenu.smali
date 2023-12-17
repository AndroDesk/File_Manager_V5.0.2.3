.class public final Lmiuix/navigator/navigation/NavigationBarMenu;
.super Lmiuix/appcompat/view/menu/MenuBuilder;
.source "NavigationBarMenu.java"


# static fields
.field public static final EXTRA_BOTTOM_TAB_ID:Ljava/lang/String; = "miuix.miracle:bottomTabId"


# instance fields
.field private final maxItemCount:I

.field private final viewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    iput p3, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    return-void
.end method


# virtual methods
.method public add(Lmiuix/navigator/BottomTab;)Landroid/view/MenuItem;
    .registers 6

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    if-gt v0, v1, :cond_8d

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getTitleResId()I

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1c
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_20
    iget v1, p1, Lmiuix/navigator/BottomTab;->groupId:I

    iget v2, p1, Lmiuix/navigator/BottomTab;->id:I

    iget v3, p1, Lmiuix/navigator/BottomTab;->categoryOrder:I

    invoke-super {p0, v1, v2, v3, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconResId()I

    move-result v1

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconResId()I

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_41

    :cond_3c
    if-eqz v2, :cond_41

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_41
    :goto_41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_6e

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-static {v0, v1}, Lm0/h0;->d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_54
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lm0/h0;->c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_61
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lm0/h0;->e(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :cond_6e
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v1

    if-eqz v1, :cond_89

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result p1

    const-string v2, "miuix.miracle:bottomTabId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_89
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-object v0

    :cond_8d
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum number of items supported by "

    const-string v2, " is "

    invoke-static {v1, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Limit can be checked with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#getMaxItemCount()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 8

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    if-gt v0, v2, :cond_1f

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    instance-of p2, p1, Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eqz p2, :cond_1b

    move-object p2, p1

    check-cast p2, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p2, v1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_1b
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-object p1

    :cond_1f
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Maximum number of items supported by "

    const-string p4, " is "

    invoke-static {p3, p1, p4}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ". Limit can be checked with "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#getMaxItemCount()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not support submenus"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxItemCount()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    return v0
.end method
