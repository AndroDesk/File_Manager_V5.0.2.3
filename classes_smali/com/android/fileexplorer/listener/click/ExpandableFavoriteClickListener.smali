.class public Lcom/android/fileexplorer/listener/click/ExpandableFavoriteClickListener;
.super Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;
.source "ExpandableFavoriteClickListener.java"


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "*+",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;",
            ">;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;III)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_7d

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 25
    goto :goto_7d

    .line 26
    :cond_19
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    instance-of v1, v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 32
    if-eqz v1, :cond_24

    .line 34
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 36
    goto :goto_32

    .line 37
    :cond_24
    instance-of v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 39
    if-eqz v1, :cond_75

    .line 41
    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 43
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 50
    move-result-object v0

    .line 51
    :goto_32
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->isDir()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_71

    .line 57
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getGlobalNavigator()Lmiuix/navigator/Navigator;

    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_70

    .line 63
    new-instance p2, Landroid/os/Bundle;

    .line 65
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 68
    iget-object p3, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result p3

    .line 74
    if-nez p3, :cond_53

    .line 76
    iget-object p3, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 78
    const-string p4, "current_directory"

    .line 80
    invoke-virtual {p2, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    goto :goto_59

    .line 84
    :cond_53
    const/4 p3, 0x2

    .line 85
    const-string p4, "device_index"

    .line 87
    invoke-virtual {p2, p4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    :goto_59
    const-string p3, "NAVIGATOR_FRAGMENT_WONT_REFRESH_NAVIGATION"

    .line 92
    const/4 p4, 0x1

    .line 93
    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string p3, "NAVIGATOR_FRAGMENT_WONT_REMOVE_OTHER_FRAGMENTS"

    .line 98
    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    new-instance p3, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 103
    const/16 p4, 0x3e9

    .line 105
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 107
    invoke-direct {p3, p4, v0, p2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p1, p3}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 113
    :cond_70
    return-void

    .line 114
    :cond_71
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->onChildClick(Landroid/view/View;III)V

    .line 117
    return-void

    .line 118
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    const-string p2, "Unknown type"

    .line 122
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p1

    .line 126
    :cond_7d
    :goto_7d
    return-void
.end method
