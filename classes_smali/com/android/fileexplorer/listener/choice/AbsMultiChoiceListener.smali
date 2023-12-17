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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_14

    const/4 v0, 0x0

    goto :goto_13

    :pswitch_a  #0x102001a
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->toggleCheckAll()V

    goto :goto_13

    :pswitch_10  #0x1020019
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_13
    return v0

    :pswitch_data_14
    .packed-switch 0x1020019
        :pswitch_10  #01020019
        :pswitch_a  #0102001a
    .end packed-switch
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 4

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckTitle(Landroid/view/ActionMode;I)V

    move-object v0, p1

    check-cast v0, Lmiuix/view/EditActionMode;

    invoke-virtual {p0, p2, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_14
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;)V
    .registers 3

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckTitle(Landroid/view/ActionMode;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->isAllItemsChecked()Z

    move-result v0

    check-cast p1, Lmiuix/view/EditActionMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    :cond_16
    return-void
.end method

.method public setDataCount(Z)V
    .registers 2

    return-void
.end method

.method public setMenuEnabled(Landroid/view/Menu;IZ)V
    .registers 4

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_9
    return-void
.end method

.method public setMenuVisible(Landroid/view/Menu;IZ)V
    .registers 4

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    return-void
.end method

.method public updateCheckAllButton(ZLmiuix/view/EditActionMode;)V
    .registers 7

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0802e3

    goto :goto_d

    :cond_a
    const v0, 0x7f0802e4

    :goto_d
    const v1, 0x1020019

    const v2, 0x102001a

    const-string v3, ""

    if-eqz p1, :cond_2b

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_21

    const p1, 0x7f0802ed

    goto :goto_24

    :cond_21
    const p1, 0x7f0802ee

    :goto_24
    invoke-interface {p2, v2, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    invoke-interface {p2, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_3e

    :cond_2b
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_35

    const p1, 0x7f08032b

    goto :goto_38

    :cond_35
    const p1, 0x7f08032c

    :goto_38
    invoke-interface {p2, v2, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    invoke-interface {p2, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    :goto_3e
    return-void
.end method

.method public updateCheckTitle(Landroid/view/ActionMode;I)V
    .registers 6

    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p2, :cond_17

    const p2, 0x7f11025d

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2f

    :cond_17
    const v1, 0x7f0f0021

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2f
    :goto_2f
    return-void
.end method
