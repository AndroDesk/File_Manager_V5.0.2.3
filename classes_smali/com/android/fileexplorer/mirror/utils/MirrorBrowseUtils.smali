.class public Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;
.super Ljava/lang/Object;
.source "MirrorBrowseUtils.java"


# static fields
.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static browseAppFile(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Lcom/android/fileexplorer/dao/file/AppTag;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "title"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "app_tag"

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 26
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 28
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 31
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 33
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 40
    move-result-object p1

    .line 41
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 43
    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static browseFileCategory(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;I)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    if-ne v1, p1, :cond_18

    .line 9
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 11
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 13
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 23
    goto/16 :goto_90

    .line 25
    :cond_18
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v1

    .line 31
    const-string v2, "file_category"

    .line 33
    if-ne v1, p1, :cond_3d

    .line 35
    new-instance v1, Landroid/os/Bundle;

    .line 37
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 45
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 55
    move-result-object p1

    .line 56
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 58
    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 61
    goto :goto_90

    .line 62
    :cond_3d
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 67
    move-result v1

    .line 68
    if-ne v1, p1, :cond_60

    .line 70
    new-instance v1, Landroid/os/Bundle;

    .line 72
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 80
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 83
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 90
    move-result-object p1

    .line 91
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 93
    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 96
    goto :goto_90

    .line 97
    :cond_60
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 102
    move-result v1

    .line 103
    if-ne v1, p1, :cond_90

    .line 105
    new-instance v1, Landroid/os/Bundle;

    .line 107
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 113
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 115
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 125
    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 128
    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 131
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 133
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>()V

    .line 136
    const/4 v0, -0x1

    .line 137
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    .line 140
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 142
    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 145
    :cond_90
    :goto_90
    return-void
.end method

.method public static browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "current_directory"

    .line 3
    invoke-static {v0, p1}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 9
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 12
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 24
    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static browseGroupPath(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    const-string v1, "group_path"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 19
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 22
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 24
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 31
    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 34
    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
