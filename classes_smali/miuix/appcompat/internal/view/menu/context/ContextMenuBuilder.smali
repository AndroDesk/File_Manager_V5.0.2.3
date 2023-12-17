.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;
.super Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.source "ContextMenuBuilder.java"

# interfaces
.implements Landroid/view/ContextMenu;


# instance fields
.field public mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->dismiss()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 14
    :cond_d
    return-void
.end method

.method public isContextMenuPopupWindowShowing()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 5
    if-nez v1, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->getContextMenuPopupWindow()Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public refreshContextMenuPopupWindow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->refreshContextMenuPopupWindow()V

    .line 11
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/ContextMenu;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/ContextMenu;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/ContextMenu;

    .line 7
    return-object p1
.end method

.method public show(Landroid/view/View;Landroid/os/IBinder;)Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;
    .registers 4

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 2
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1f

    const p1, 0xc351

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4
    new-instance p1, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 5
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public show(Landroid/view/View;Landroid/os/IBinder;FF)Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;
    .registers 7

    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 7
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    const v0, 0xc351

    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 9
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 10
    invoke-virtual {v0, p2, p1, p3, p4}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->show(Landroid/os/IBinder;Landroid/view/View;FF)V

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method
