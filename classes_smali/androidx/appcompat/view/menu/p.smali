.class public Landroidx/appcompat/view/menu/p;
.super Landroidx/appcompat/view/menu/c;
.source "MenuWrapperICS.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field public final d:Lh0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh0/a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;)V

    .line 4
    if-eqz p2, :cond_8

    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string p2, "Wrapped Object can not be null."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method


# virtual methods
.method public final add(I)Landroid/view/MenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 21

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p8

    .line 4
    if-eqz v1, :cond_9

    .line 6
    array-length v2, v1

    .line 7
    new-array v2, v2, [Landroid/view/MenuItem;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v2, 0x0

    .line 11
    :goto_a
    iget-object v3, v0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 13
    move v4, p1

    .line 14
    move v5, p2

    .line 15
    move v6, p3

    .line 16
    move-object/from16 v7, p4

    .line 18
    move-object/from16 v8, p5

    .line 20
    move-object/from16 v9, p6

    .line 22
    move/from16 v10, p7

    .line 24
    move-object v11, v2

    .line 25
    invoke-interface/range {v3 .. v11}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 28
    move-result v3

    .line 29
    if-eqz v2, :cond_2d

    .line 31
    const/4 v4, 0x0

    .line 32
    array-length v5, v2

    .line 33
    :goto_20
    if-ge v4, v5, :cond_2d

    .line 35
    aget-object v6, v2, v4

    .line 37
    invoke-virtual {p0, v6}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 40
    move-result-object v6

    .line 41
    aput-object v6, v1, v4

    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_20

    .line 46
    :cond_2d
    return v3
.end method

.method public final addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroidx/collection/f;->clear()V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Landroidx/collection/f;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Landroidx/collection/f;->clear()V

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 17
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 20
    return-void
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 6
    return-void
.end method

.method public final findItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final hasVisibleItems()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final performIdentifierAction(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final removeGroup(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 3
    if-nez v0, :cond_5

    .line 5
    goto :goto_26

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 9
    invoke-virtual {v1}, Landroidx/collection/f;->size()I

    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_26

    .line 15
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 17
    invoke-virtual {v1, v0}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lh0/b;

    .line 23
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    .line 26
    move-result v1

    .line 27
    if-ne v1, p1, :cond_23

    .line 29
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 31
    invoke-virtual {v1, v0}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 36
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_6

    .line 39
    :cond_26
    :goto_26
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 41
    invoke-interface {v0, p1}, Landroid/view/Menu;->removeGroup(I)V

    .line 44
    return-void
.end method

.method public final removeItem(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 3
    if-nez v0, :cond_5

    .line 5
    goto :goto_25

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 9
    invoke-virtual {v1}, Landroidx/collection/f;->size()I

    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_25

    .line 15
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 17
    invoke-virtual {v1, v0}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lh0/b;

    .line 23
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 26
    move-result v1

    .line 27
    if-ne v1, p1, :cond_22

    .line 29
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 31
    invoke-virtual {v1, v0}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 34
    goto :goto_25

    .line 35
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_6

    .line 38
    :cond_25
    :goto_25
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 40
    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 43
    return-void
.end method

.method public final setGroupCheckable(IZZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 6
    return-void
.end method

.method public final setGroupEnabled(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 6
    return-void
.end method

.method public final setGroupVisible(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 6
    return-void
.end method

.method public final setQwertyMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 6
    return-void
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/p;->d:Lh0/a;

    .line 3
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
