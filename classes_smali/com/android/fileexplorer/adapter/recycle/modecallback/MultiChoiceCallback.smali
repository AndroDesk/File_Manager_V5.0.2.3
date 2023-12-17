.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
.source "MultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 6
    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 9
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 11
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_f

    .line 14
    move v0, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 20
    move-result v3

    .line 21
    sparse-switch v3, :sswitch_data_e4

    .line 24
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :sswitch_1c
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 39
    return v2

    .line 40
    :sswitch_27
    if-eqz v0, :cond_3c

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 44
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 56
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 58
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    :cond_3c
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 64
    return v2

    .line 65
    :sswitch_40
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 67
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 75
    return v2

    .line 76
    :sswitch_4b
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 79
    if-eqz v0, :cond_5d

    .line 81
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 83
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 94
    :cond_5d
    return v2

    .line 95
    :sswitch_5e
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 98
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->doEncrypt(Ljava/util/ArrayList;)V

    .line 103
    return v2

    .line 104
    :sswitch_67
    if-eqz v0, :cond_77

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 108
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 120
    :cond_77
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 123
    return v2

    .line 124
    :sswitch_7b
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 127
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 130
    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 136
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 138
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 141
    move-result-object v3

    .line 142
    const v4, 0x7f11029a

    .line 145
    const v5, 0x7f11030c

    .line 148
    const/4 v6, 0x1

    .line 149
    const/4 v7, 0x1

    .line 150
    const/4 v8, 0x1

    .line 151
    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/model/Util;->pickFolder(Landroid/app/Activity;IIZZZ)V

    .line 154
    return v2

    .line 155
    :sswitch_9a
    if-eqz v0, :cond_ab

    .line 157
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 159
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 167
    const-string v0, ""

    .line 169
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 172
    :cond_ab
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 175
    return v2

    .line 176
    :sswitch_af
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 179
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 181
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 186
    return v2

    .line 187
    :sswitch_ba
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 189
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 197
    return v2

    .line 198
    :sswitch_c5
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 201
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 204
    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 210
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 212
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 215
    move-result-object v3

    .line 216
    const v4, 0x7f1100f3

    .line 219
    const v5, 0x7f1102ed

    .line 222
    const/4 v6, 0x1

    .line 223
    const/4 v7, 0x1

    .line 224
    const/4 v8, 0x1

    .line 225
    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/model/Util;->pickFolder(Landroid/app/Activity;IIZZZ)V

    .line 228
    return v2

    .line 229
    :sswitch_data_e4
    .sparse-switch
        0x7f0a0054 -> :sswitch_c5
        0x7f0a005a -> :sswitch_ba
        0x7f0a005e -> :sswitch_af
        0x7f0a0061 -> :sswitch_9a
        0x7f0a006a -> :sswitch_7b
        0x7f0a006d -> :sswitch_67
        0x7f0a006e -> :sswitch_5e
        0x7f0a0072 -> :sswitch_4b
        0x7f0a0075 -> :sswitch_40
        0x7f0a0077 -> :sswitch_27
        0x7f0a0079 -> :sswitch_1c
    .end sparse-switch
.end method
