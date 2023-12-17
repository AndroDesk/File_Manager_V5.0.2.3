.class public abstract Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;
.super Ljava/lang/Object;
.source "AbsMultiChoiceListener.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;


# static fields
.field public static final ACTION_DESTORY_OPERATOR_NOT_NOTIFY:Ljava/lang/String; = "action_destory_operator_not_notify"


# instance fields
.field public mActionMode:Landroid/view/ActionMode;

.field public mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    packed-switch p2, :pswitch_data_14

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_13

    .line 11
    :pswitch_a  #0x102001a
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 13
    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->toggleCheckAll()V

    .line 16
    goto :goto_13

    .line 17
    :pswitch_10  #0x1020019
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 20
    :goto_13
    return v0

    .line 21
    :pswitch_data_14
    .packed-switch 0x1020019
        :pswitch_10  #01020019
        :pswitch_a  #0102001a
    .end packed-switch
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_14

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckTitle(Landroid/view/ActionMode;I)V

    .line 12
    move-object v0, p1

    .line 13
    check-cast v0, Lmiuix/view/EditActionMode;

    .line 15
    invoke-virtual {p0, p2, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 21
    :cond_14
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_16

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckTitle(Landroid/view/ActionMode;I)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 14
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->isAllItemsChecked()Z

    .line 17
    move-result v0

    .line 18
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 23
    :cond_16
    return-void
.end method

.method public setDataCount(Z)V
    .registers 2

    return-void
.end method

.method public setMenuEnabled(Landroid/view/Menu;IZ)V
    .registers 4

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10
    :cond_9
    return-void
.end method

.method public setMenuVisible(Landroid/view/Menu;IZ)V
    .registers 4

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    :cond_9
    return-void
.end method

.method public updateCheckAllButton(ZLmiuix/view/EditActionMode;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    const v0, 0x7f0802e3

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    const v0, 0x7f0802e4

    .line 14
    :goto_d
    const v1, 0x1020019

    .line 17
    const v2, 0x102001a

    .line 20
    const-string v3, ""

    .line 22
    if-eqz p1, :cond_2b

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_21

    .line 30
    const p1, 0x7f0802ed

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    const p1, 0x7f0802ee

    .line 37
    :goto_24
    invoke-interface {p2, v2, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 40
    invoke-interface {p2, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 43
    goto :goto_3e

    .line 44
    :cond_2b
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_35

    .line 50
    const p1, 0x7f08032b

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    const p1, 0x7f08032c

    .line 57
    :goto_38
    invoke-interface {p2, v2, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 60
    invoke-interface {p2, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 63
    :goto_3e
    return-void
.end method

.method public updateCheckTitle(Landroid/view/ActionMode;I)V
    .registers 6

    .line 1
    if-eqz p1, :cond_2f

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    if-nez p2, :cond_17

    .line 13
    const p2, 0x7f11025d

    .line 16
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    goto :goto_2f

    .line 24
    :cond_17
    const v1, 0x7f0f0021

    .line 27
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p2

    .line 39
    aput-object p2, v1, v2

    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method
