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

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    .line 6
    iput p3, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    .line 8
    return-void
.end method


# virtual methods
.method public add(Lmiuix/navigator/BottomTab;)Landroid/view/MenuItem;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 7
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    .line 9
    if-gt v0, v1, :cond_8d

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 14
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getTitleResId()I

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1c

    .line 20
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getTitle()Ljava/lang/CharSequence;

    .line 32
    move-result-object v0

    .line 33
    :goto_20
    iget v1, p1, Lmiuix/navigator/BottomTab;->groupId:I

    .line 35
    iget v2, p1, Lmiuix/navigator/BottomTab;->id:I

    .line 37
    iget v3, p1, Lmiuix/navigator/BottomTab;->categoryOrder:I

    .line 39
    invoke-super {p0, v1, v2, v3, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconResId()I

    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconResId()I

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3c

    .line 57
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 60
    goto :goto_41

    .line 61
    :cond_3c
    if-eqz v2, :cond_41

    .line 63
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 66
    :cond_41
    :goto_41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    const/16 v2, 0x1a

    .line 70
    if-lt v1, v2, :cond_6e

    .line 72
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_54

    .line 78
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lm0/h0;->d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 85
    :cond_54
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconTintList()Landroid/content/res/ColorStateList;

    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_61

    .line 91
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getIconTintList()Landroid/content/res/ColorStateList;

    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lm0/h0;->c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 98
    :cond_61
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getContentDescription()Ljava/lang/CharSequence;

    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_6e

    .line 104
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getContentDescription()Ljava/lang/CharSequence;

    .line 107
    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lm0/h0;->e(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 111
    :cond_6e
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_89

    .line 117
    new-instance v1, Landroid/content/Intent;

    .line 119
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    .line 129
    move-result p1

    .line 130
    const-string v2, "miuix.miracle:bottomTabId"

    .line 132
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 138
    :cond_89
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 141
    return-object v0

    .line 142
    :cond_8d
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 150
    const-string v1, "Maximum number of items supported by "

    .line 152
    const-string v2, " is "

    .line 154
    invoke-static {v1, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    move-result-object v1

    .line 158
    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v2, ". Limit can be checked with "

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string p1, "#getMaxItemCount()"

    .line 173
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p1

    .line 180
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    throw v0
.end method

.method public addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    .line 9
    if-gt v0, v2, :cond_1f

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 17
    move-result-object p1

    .line 18
    instance-of p2, p1, Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 20
    if-eqz p2, :cond_1b

    .line 22
    move-object p2, p1

    .line 23
    check-cast p2, Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 25
    invoke-virtual {p2, v1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 31
    return-object p1

    .line 32
    :cond_1f
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string p3, "Maximum number of items supported by "

    .line 42
    const-string p4, " is "

    .line 44
    invoke-static {p3, p1, p4}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object p3

    .line 48
    iget p4, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    .line 50
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string p4, ". Limit can be checked with "

    .line 55
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p1, "#getMaxItemCount()"

    .line 63
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p2
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object p3, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p3, " does not support submenus"

    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public getMaxItemCount()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenu;->maxItemCount:I

    .line 3
    return v0
.end method
