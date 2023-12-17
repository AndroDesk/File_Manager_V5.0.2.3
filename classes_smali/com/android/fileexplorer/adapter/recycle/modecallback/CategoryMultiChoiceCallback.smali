.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;
.source "CategoryMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryMultiChoiceCallback"


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    return-void
.end method

.method private isAddFavorite()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 19
    if-eqz v1, :cond_6

    .line 21
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 23
    if-nez v1, :cond_6

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    return v0
.end method


# virtual methods
.method public convert2RealCheckedItems()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->convert2RealCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    return-void
.end method

.method public encrypt()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

    .line 6
    return-void
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
    const v1, 0x7f0e000b

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
    const-string v1, "onPrepareActionMode: checkedCount = "

    .line 12
    const-string v2, "CategoryMultiChoiceCallback"

    .line 14
    invoke-static {v1, v0, v2}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v0, :cond_16

    .line 21
    move v3, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v3, v1

    .line 24
    :goto_17
    if-ne v0, v2, :cond_27

    .line 26
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 34
    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 36
    if-nez v4, :cond_27

    .line 38
    move v4, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v4, v1

    .line 41
    :goto_28
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;->isAddFavorite()Z

    .line 44
    move-result v5

    .line 45
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_46

    .line 51
    if-eqz v4, :cond_46

    .line 53
    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 61
    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 63
    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_46

    .line 69
    move v6, v2

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v6, v1

    .line 72
    :goto_47
    const v7, 0x7f0a0075

    .line 75
    xor-int/lit8 v8, v3, 0x1

    .line 77
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 80
    const v7, 0x7f0a006a

    .line 83
    xor-int/lit8 v8, v3, 0x1

    .line 85
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 88
    const v7, 0x7f0a005a

    .line 91
    xor-int/lit8 v8, v3, 0x1

    .line 93
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 96
    const v7, 0x7f0a0054

    .line 99
    xor-int/lit8 v8, v3, 0x1

    .line 101
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 104
    const v7, 0x7f0a006e

    .line 107
    if-nez v3, :cond_78

    .line 109
    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v8}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_78

    .line 119
    move v8, v2

    .line 120
    goto :goto_79

    .line 121
    :cond_78
    move v8, v1

    .line 122
    :goto_79
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 125
    const v7, 0x7f0a005e

    .line 128
    if-nez v3, :cond_85

    .line 130
    if-eqz v5, :cond_85

    .line 132
    move v8, v2

    .line 133
    goto :goto_86

    .line 134
    :cond_85
    move v8, v1

    .line 135
    :goto_86
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 138
    const v7, 0x7f0a0079

    .line 141
    if-nez v3, :cond_92

    .line 143
    if-nez v5, :cond_92

    .line 145
    move v3, v2

    .line 146
    goto :goto_93

    .line 147
    :cond_92
    move v3, v1

    .line 148
    :goto_93
    invoke-virtual {p0, p2, v7, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 151
    const v3, 0x7f0a0072

    .line 154
    if-ne v0, v2, :cond_9d

    .line 156
    move v5, v2

    .line 157
    goto :goto_9e

    .line 158
    :cond_9d
    move v5, v1

    .line 159
    :goto_9e
    invoke-virtual {p0, p2, v3, v5}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 162
    const v3, 0x7f0a0050

    .line 165
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 168
    const v3, 0x7f0a006d

    .line 171
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 174
    const v3, 0x7f0a0077

    .line 177
    invoke-virtual {p0, p2, v3, v6}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 180
    const v3, 0x7f0a0061

    .line 183
    if-ne v0, v2, :cond_b9

    .line 185
    move v1, v2

    .line 186
    :cond_b9
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 189
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 192
    move-result p1

    .line 193
    return p1
.end method
