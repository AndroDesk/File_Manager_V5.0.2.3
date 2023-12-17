.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
.source "PrivateMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/encryption/PrivateFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateMultiChoiceCallback"


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    return-void
.end method


# virtual methods
.method public getCheckedFiles()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    sparse-switch v0, :sswitch_data_72

    .line 13
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 23
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 29
    invoke-static {p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationRestoreFiles(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 32
    return v2

    .line 33
    :sswitch_20
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 38
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setImmersionMenuEnabled(Z)V

    .line 45
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPastePrivateFiles(Ljava/util/ArrayList;Z)V

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 56
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 63
    return v2

    .line 64
    :sswitch_3f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 67
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 69
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 72
    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 75
    invoke-static {p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationDeleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 78
    return v2

    .line 79
    :sswitch_4e
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 82
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 84
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 87
    move-result-object p1

    .line 88
    const p2, 0x7f1103bd

    .line 91
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 98
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 105
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback$1;

    .line 107
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;)V

    .line 110
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;)V

    .line 113
    return v2

    .line 114
    nop

    .line 115
    :sswitch_data_72
    .sparse-switch
        0x7f0a0059 -> :sswitch_4e
        0x7f0a005a -> :sswitch_3f
        0x7f0a006a -> :sswitch_20
        0x7f0a0073 -> :sswitch_11
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0e000f

    .line 14
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 17
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_e

    .line 13
    move v2, v1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v2, 0x0

    .line 16
    :goto_f
    const-string v3, "onPrepareActionMode count = "

    .line 18
    const-string v4, "PrivateMultiChoiceCallback"

    .line 20
    invoke-static {v3, v0, v4}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    const v0, 0x7f0a0059

    .line 26
    xor-int/lit8 v3, v2, 0x1

    .line 28
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 31
    const v0, 0x7f0a005a

    .line 34
    xor-int/lit8 v3, v2, 0x1

    .line 36
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 39
    const v0, 0x7f0a0073

    .line 42
    xor-int/lit8 v3, v2, 0x1

    .line 44
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 47
    const v0, 0x7f0a006a

    .line 50
    xor-int/2addr v1, v2

    .line 51
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 57
    move-result p1

    .line 58
    return p1
.end method
