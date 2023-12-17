.class public Lcom/android/fileexplorer/statistics/StatHelper;
.super Ljava/lang/Object;
.source "StatHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "function"

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p0, "tip"

    .line 18
    const-string p1, "1096.5.2.1.25473"

    .line 20
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string p0, "window_click"

    .line 25
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method public static bottomFunctionExpose(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "bottom_function_expose"

    .line 13
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    return-void
.end method

.method public static clickDownload(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "download_button_click"

    .line 13
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    return-void
.end method

.method public static clickFull()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    const-string v2, "云盘tab页"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v1, "tip"

    .line 15
    const-string v2, "1096.2.2.1.24677"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "window_click"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    return-void
.end method

.method public static clickLabel(Ljava/lang/String;I)V
    .registers 5

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    const-string v2, "手机tab页"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v1, "label"

    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 24
    const-string p1, "position"

    .line 26
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p0, "tip"

    .line 31
    const-string p1, "1096.4.0.1.24678"

    .line 33
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string p0, "label_click"

    .line 38
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method public static clickLoginGuide()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    const-string v2, "云盘tab页"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v1, "tip"

    .line 15
    const-string v2, "1096.2.0.1.24679"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "click_login_guide"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    return-void
.end method

.method public static clickMore(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "more_button_click"

    .line 13
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    return-void
.end method

.method public static clickSearch(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "tip"

    .line 13
    const-string v1, "1096.5.1.1.24682"

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p0, "search_button_click"

    .line 20
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 23
    return-void
.end method

.method public static cloudFileCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "file_total_num"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "file_type"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string v1, "云盘tab页"

    .line 4
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cache_way"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cloud_file_cache"

    .line 6
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static cloudFileCache(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    instance-of v4, v3, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v4, :cond_e

    .line 11
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    check-cast v3, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v3}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/statistics/StatHelper;->getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "file_type"

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_36
    const-string v2, "file_list"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "file_total_num"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string v1, "云盘tab页"

    .line 16
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cache_way"

    const-string v1, "点击缓存到本地功能"

    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cloud_file_cache"

    .line 18
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static cloudFileOpen(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    if-nez p0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    const-string v2, "file_type"

    .line 19
    if-eqz v1, :cond_22

    .line 21
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 23
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, v2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    goto :goto_2d

    .line 35
    :cond_22
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, v2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_2d
    const-string p0, "open_result"

    .line 48
    const-string v1, "成功"

    .line 50
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3c

    .line 59
    const-string p1, "云盘tab页"

    .line 61
    :cond_3c
    const-string p0, "page"

    .line 63
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string p0, "cloud_file_open"

    .line 68
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    return-void
.end method

.method public static cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "file_type"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "page"

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p0, "cloud_file_preview"

    .line 18
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    return-void
.end method

.method public static createFolder(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "create_folder"

    .line 13
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    return-void
.end method

.method public static fileDelete(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getFileListMap(Ljava/util/List;)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    const-string v1, "file_list"

    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p0

    .line 28
    const-string p1, "file_total_num"

    .line 30
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p0, "file_delete"

    .line 35
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method public static fileMoveOrCopy(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "target_directory"

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p3}, Lcom/android/fileexplorer/statistics/StatHelper;->getFileListMap(Ljava/util/List;)Ljava/util/List;

    .line 19
    move-result-object p0

    .line 20
    const-string p1, "file_list"

    .line 22
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    if-eqz p2, :cond_20

    .line 27
    const-string p0, "file_move"

    .line 29
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    goto :goto_25

    .line 33
    :cond_20
    const-string p0, "file_copy"

    .line 35
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    :goto_25
    return-void
.end method

.method public static fileShare(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getFileListMap(Ljava/util/List;)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    const-string v1, "file_list"

    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p0

    .line 28
    const-string p1, "file_total_num"

    .line 30
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p0, "file_share"

    .line 35
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method public static getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "未知"

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v2

    .line 18
    sparse-switch v2, :sswitch_data_6c

    .line 21
    goto :goto_56

    .line 22
    :sswitch_15
    const-string v2, "video"

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1e

    .line 30
    goto :goto_56

    .line 31
    :cond_1e
    const/4 v0, 0x5

    .line 32
    goto :goto_56

    .line 33
    :sswitch_20
    const-string v2, "audio"

    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_29

    .line 41
    goto :goto_56

    .line 42
    :cond_29
    const/4 v0, 0x4

    .line 43
    goto :goto_56

    .line 44
    :sswitch_2b
    const-string v2, "zip"

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_34

    .line 52
    goto :goto_56

    .line 53
    :cond_34
    const/4 v0, 0x3

    .line 54
    goto :goto_56

    .line 55
    :sswitch_36
    const-string v2, "pic"

    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3f

    .line 63
    goto :goto_56

    .line 64
    :cond_3f
    const/4 v0, 0x2

    .line 65
    goto :goto_56

    .line 66
    :sswitch_41
    const-string v2, "doc"

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_4a

    .line 74
    goto :goto_56

    .line 75
    :cond_4a
    const/4 v0, 0x1

    .line 76
    goto :goto_56

    .line 77
    :sswitch_4c
    const-string v2, "apk"

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_55

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    const/4 v0, 0x0

    .line 87
    :goto_56
    packed-switch v0, :pswitch_data_86

    .line 90
    return-object v1

    .line 91
    :pswitch_5a  #0x5
    const-string p0, "视频"

    .line 93
    return-object p0

    .line 94
    :pswitch_5d  #0x4
    const-string p0, "音乐"

    .line 96
    return-object p0

    .line 97
    :pswitch_60  #0x3
    const-string p0, "压缩包"

    .line 99
    return-object p0

    .line 100
    :pswitch_63  #0x2
    const-string p0, "图片"

    .line 102
    return-object p0

    .line 103
    :pswitch_66  #0x1
    const-string p0, "文档"

    .line 105
    return-object p0

    .line 106
    :pswitch_69  #0x0
    const-string p0, "安装包"

    .line 108
    return-object p0

    .line 109
    :sswitch_data_6c
    .sparse-switch
        0x17a1c -> :sswitch_4c
        0x18538 -> :sswitch_41
        0x1b18a -> :sswitch_36
        0x1d721 -> :sswitch_2b
        0x58d9bd6 -> :sswitch_20
        0x6b0147b -> :sswitch_15
    .end sparse-switch

    .line 135
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_69  #00000000
        :pswitch_66  #00000001
        :pswitch_63  #00000002
        :pswitch_60  #00000003
        :pswitch_5d  #00000004
        :pswitch_5a  #00000005
    .end packed-switch
.end method

.method private static getErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;
    .registers 3

    const-string v0, "系统错误"

    if-nez p0, :cond_5

    return-object v0

    .line 1
    :cond_5
    iget p0, p0, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    const/16 v1, -0x2710

    if-eq p0, v1, :cond_28

    const/16 v1, 0x2712

    if-eq p0, v1, :cond_25

    const/16 v1, 0x2716

    if-eq p0, v1, :cond_22

    const/16 v1, 0x271e

    if-eq p0, v1, :cond_1f

    const/16 v1, 0x2afa

    if-eq p0, v1, :cond_1c

    return-object v0

    :cond_1c
    const-string p0, "文件不存在"

    return-object p0

    :cond_1f
    const-string p0, "暂只支持中国大陆用户上传"

    return-object p0

    :cond_22
    const-string p0, "云空间已满"

    return-object p0

    :cond_25
    const-string p0, "文字包涵特殊字符"

    return-object p0

    :cond_28
    const-string p0, "文件大小为0"

    return-object p0
.end method

.method private static getErrorMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Ljava/lang/String;
    .registers 3

    const-string v0, "系统错误"

    if-nez p0, :cond_5

    return-object v0

    .line 2
    :cond_5
    sget-object v1, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_23

    const/4 v1, 0x2

    if-eq p0, v1, :cond_20

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1a

    return-object v0

    :cond_1a
    const-string p0, "暂只支持中国大陆用户上传"

    return-object p0

    :cond_1d
    const-string p0, "云空间已满"

    return-object p0

    :cond_20
    const-string p0, "文件不存在"

    return-object p0

    :cond_23
    const-string p0, "文字包涵特殊字符"

    return-object p0
.end method

.method private static getFileListMap(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-nez p0, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_4e

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 25
    new-instance v2, Landroid/util/ArrayMap;

    .line 27
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    instance-of v3, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 32
    const-string v4, "if_cloud_file"

    .line 34
    const-string v5, "file_type"

    .line 36
    if-eqz v3, :cond_38

    .line 38
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 40
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/android/fileexplorer/statistics/StatHelper;->getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v2, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "true"

    .line 53
    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    goto :goto_4a

    .line 57
    :cond_38
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 59
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "false"

    .line 72
    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_4a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_c

    .line 79
    :cond_4e
    return-object v0
.end method

.method public static getFuncNameByFuncId(I)Ljava/lang/String;
    .registers 1

    sparse-switch p0, :sswitch_data_28

    const-string p0, ""

    return-object p0

    :sswitch_6
    const-string p0, "取消收藏"

    return-object p0

    :sswitch_9
    const-string p0, "重命名"

    return-object p0

    :sswitch_c
    const-string p0, "释放缓存"

    return-object p0

    :sswitch_f
    const-string p0, "设为私密"

    return-object p0

    :sswitch_12
    const-string p0, "用其他应用打开"

    return-object p0

    :sswitch_15
    const-string p0, "详情"

    return-object p0

    :sswitch_18
    const-string p0, "收藏"

    return-object p0

    :sswitch_1b
    const-string p0, "另存到"

    return-object p0

    :sswitch_1e
    const-string p0, "压缩"

    return-object p0

    :sswitch_21
    const-string p0, "缓存到本地"

    return-object p0

    :sswitch_24
    const-string p0, "添加到小部件"

    return-object p0

    nop

    :sswitch_data_28
    .sparse-switch
        0x7f0a0039 -> :sswitch_24
        0x7f0a004d -> :sswitch_21
        0x7f0a0050 -> :sswitch_1e
        0x7f0a0056 -> :sswitch_1b
        0x7f0a005e -> :sswitch_18
        0x7f0a0061 -> :sswitch_15
        0x7f0a006d -> :sswitch_12
        0x7f0a006e -> :sswitch_f
        0x7f0a0071 -> :sswitch_c
        0x7f0a0072 -> :sswitch_9
        0x7f0a0079 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getLocalFileType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "未知"

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isPicture(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_12

    .line 16
    const-string p0, "图片"

    .line 18
    return-object p0

    .line 19
    :cond_12
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isMovie(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    const-string p0, "视频"

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isApk(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_24

    .line 34
    const-string p0, "安装包"

    .line 36
    return-object p0

    .line 37
    :cond_24
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isWord(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_46

    .line 43
    const-string v0, "pdf"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_33

    .line 51
    goto :goto_46

    .line 52
    :cond_33
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isZip(Ljava/lang/String;)Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3c

    .line 58
    const-string p0, "压缩包"

    .line 60
    return-object p0

    .line 61
    :cond_3c
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isMusic(Ljava/lang/String;)Z

    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_45

    .line 67
    const-string p0, "音乐"

    .line 69
    return-object p0

    .line 70
    :cond_45
    return-object v1

    .line 71
    :cond_46
    :goto_46
    const-string p0, "文档"

    .line 73
    return-object p0
.end method

.method public static getPageNameByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "手机tab页"

    .line 3
    if-nez p0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    sget-object v1, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result p0

    .line 12
    aget p0, v1, p0

    .line 14
    packed-switch p0, :pswitch_data_2c

    .line 17
    return-object v0

    .line 18
    :pswitch_11  #0xf
    const-string p0, "最近tab页"

    .line 20
    return-object p0

    .line 21
    :pswitch_14  #0xd, 0xe
    const-string p0, "手机tab页_传输与下载页"

    .line 23
    return-object p0

    .line 24
    :pswitch_17  #0xc
    const-string p0, "手机tab页_收藏页"

    .line 26
    return-object p0

    .line 27
    :pswitch_1a  #0xb
    const-string p0, "手机tab页_安装包页"

    .line 29
    return-object p0

    .line 30
    :pswitch_1d  #0xa
    const-string p0, "手机tab页_压缩包页"

    .line 32
    return-object p0

    .line 33
    :pswitch_20  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    const-string p0, "手机tab页_文档页"

    .line 35
    return-object p0

    .line 36
    :pswitch_23  #0x3
    const-string p0, "手机tab页_图片页"

    .line 38
    return-object p0

    .line 39
    :pswitch_26  #0x2
    const-string p0, "手机tab页_视频页"

    .line 41
    return-object p0

    .line 42
    :pswitch_29  #0x1
    const-string p0, "手机tab页_音乐页"

    .line 44
    return-object p0

    .line 45
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_26  #00000002
        :pswitch_23  #00000003
        :pswitch_20  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_20  #00000007
        :pswitch_20  #00000008
        :pswitch_20  #00000009
        :pswitch_1d  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_14  #0000000d
        :pswitch_14  #0000000e
        :pswitch_11  #0000000f
    .end packed-switch
.end method

.method public static localFileOpen(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p2, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getDaysBetween(JJ)J

    .line 8
    move-result-wide p1

    .line 9
    new-instance v0, Landroid/util/ArrayMap;

    .line 11
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    const-string v1, "file_type"

    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p0, "最近tab页"

    .line 21
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_4a

    .line 27
    const-wide/16 v1, 0x0

    .line 29
    cmp-long p0, p1, v1

    .line 31
    if-nez p0, :cond_23

    .line 33
    const-string p0, "今天"

    .line 35
    goto :goto_45

    .line 36
    :cond_23
    const-wide/16 v1, 0x1

    .line 38
    cmp-long p0, p1, v1

    .line 40
    if-nez p0, :cond_2c

    .line 42
    const-string p0, "昨天"

    .line 44
    goto :goto_45

    .line 45
    :cond_2c
    const-wide/16 v1, 0x2

    .line 47
    cmp-long p0, p1, v1

    .line 49
    if-ltz p0, :cond_43

    .line 51
    const/4 p0, 0x1

    .line 52
    new-array p0, p0, [Ljava/lang/Object;

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    move-result-object p1

    .line 59
    aput-object p1, p0, v1

    .line 61
    const-string p1, "%d天前"

    .line 63
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    const-string p0, ""

    .line 70
    :goto_45
    const-string p1, "file_date_partition"

    .line 72
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_4a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_52

    .line 81
    const-string p3, "手机tab页"

    .line 83
    :cond_52
    const-string p0, "page"

    .line 85
    invoke-virtual {v0, p0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string p0, "local_file_open"

    .line 90
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public static open(Landroid/content/Intent;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    const-string v1, "android.intent.action.MAIN"

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_14

    .line 18
    const-string p0, "点击icon"

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const-string p0, "其他"

    .line 23
    :goto_16
    const-string v1, "open_way"

    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p0, "tip"

    .line 30
    const-string v1, "1096.5.0.1.24681"

    .line 32
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string p0, "open"

    .line 37
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public static reportSettingStatus()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/utils/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_d

    .line 11
    const-string v0, "un_login"

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 16
    :goto_f
    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatPreferenceUtil;->getLastReportSetting(Ljava/lang/String;)J

    .line 19
    move-result-wide v1

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v3

    .line 24
    invoke-static {v1, v2, v3, v4}, Lcom/android/fileexplorer/model/TimeUtils;->isInSameDay(JJ)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v1

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/statistics/StatPreferenceUtil;->saveLastReportSetting(Ljava/lang/String;J)V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    .line 40
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowEncrypt()Z

    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v1

    .line 51
    const-string v2, "if_private_file_encryption"

    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    .line 59
    move-result v1

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v1

    .line 64
    const-string v2, "if_hidden_cloud_file"

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    .line 72
    move-result v1

    .line 73
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    move-result-object v1

    .line 77
    const-string v2, "if_hidden_screenshots"

    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getShowDotAndHiddenFiles()Z

    .line 85
    move-result v1

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object v1

    .line 90
    const-string v2, "if_show_hidden_files"

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isCloudUseMobileData()Z

    .line 98
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    move-result-object v1

    .line 103
    const-string v2, "if_mobile_network_synchronization"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-static {v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    .line 112
    move-result-object v2

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :goto_75
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 121
    move-result v4

    .line 122
    if-ge v1, v4, :cond_a3

    .line 124
    const/4 v4, 0x4

    .line 125
    if-ge v1, v4, :cond_a3

    .line 127
    new-instance v4, Landroid/util/ArrayMap;

    .line 129
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 138
    sget-object v6, Lcom/fileexplorer/commonlibrary/CustomApplication;->mApplicationContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    const-string v6, "label"

    .line 146
    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 151
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    const-string v6, "position"

    .line 157
    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    goto :goto_75

    .line 164
    :cond_a3
    const-string v1, "label_list"

    .line 166
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "tip"

    .line 171
    const-string v2, "1096.5.0.1.24683"

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "status"

    .line 178
    invoke-static {v1, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method public static search(ZLjava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    if-eqz p0, :cond_c

    .line 8
    const-string v1, "file_type"

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object p0

    .line 17
    const-string p1, "if_used_source"

    .line 19
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string p0, "search"

    .line 24
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    return-void
.end method

.method public static showCloudDriverTab(ZLcom/android/fileexplorer/controller/FabPreference;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    xor-int/lit8 p0, p0, 0x1

    .line 8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object p0

    .line 12
    const-string v1, "if_first_login_page"

    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatConstants;->getFileArrangeWay(Lcom/android/fileexplorer/controller/FabPreference;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const-string v1, "file_arrange_way"

    .line 23
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatConstants;->getFileOrderWay(Lcom/android/fileexplorer/controller/FabPreference;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const-string p1, "file_order_way"

    .line 32
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string p0, "page"

    .line 37
    const-string p1, "云盘tab页"

    .line 39
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string p0, "tip"

    .line 44
    const-string p1, "1096.2.0.1.24675"

    .line 46
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string p0, "page_expose"

    .line 51
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public static showFull()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    const-string v2, "云盘tab页"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v1, "tip"

    .line 15
    const-string v2, "1096.2.2.1.24676"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "window_expose"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    return-void
.end method

.method public static showPhoneTab(Lcom/android/fileexplorer/controller/FabPreference;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatConstants;->getFileArrangeWay(Lcom/android/fileexplorer/controller/FabPreference;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "file_arrange_way"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatConstants;->getFileOrderWay(Lcom/android/fileexplorer/controller/FabPreference;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string v1, "file_order_way"

    .line 21
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string p0, "page"

    .line 26
    const-string v1, "手机tab页"

    .line 28
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string p0, "tip"

    .line 33
    const-string v1, "1096.4.0.1.25472"

    .line 35
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p0, "page_expose"

    .line 40
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public static showRecentTab(I)V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p0

    .line 10
    const-string v1, "file_nums_today"

    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p0, "page"

    .line 17
    const-string v1, "最近tab页"

    .line 19
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string p0, "tip"

    .line 24
    const-string v1, "1096.3.0.1.24673"

    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p0, "page_expose"

    .line 31
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    return-void
.end method

.method public static topFunctionClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p0, "function"

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p0, "tip"

    .line 18
    const-string p1, "1096.5.1.1.25471"

    .line 20
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string p0, "window_click"

    .line 25
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method public static uploadFailWindowClick(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 8
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    const-string v1, "file_type"

    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string p1, "failed_reason"

    .line 27
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string p0, "button_name"

    .line 32
    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string p0, "page"

    .line 37
    const-string p1, "云盘tab页"

    .line 39
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string p0, "tip"

    .line 44
    const-string p1, "1096.2.1.1.24672"

    .line 46
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string p0, "window_click"

    .line 51
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public static uploadFailWindowShow(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 8
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    const-string v1, "file_type"

    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string p1, "failed_reason"

    .line 27
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string p0, "page"

    .line 32
    const-string p1, "云盘tab页"

    .line 34
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string p0, "tip"

    .line 39
    const-string p1, "1096.2.1.1.24671"

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string p0, "window_expose"

    .line 46
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method public static uploadToCloud(Ljava/lang/String;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    const-string v1, "file_type"

    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    if-eqz p1, :cond_13

    .line 17
    const-string p0, "成功"

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const-string p0, " 失败"

    .line 22
    :goto_15
    const-string v1, "upload_result"

    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    if-nez p1, :cond_25

    .line 29
    invoke-static {p2}, Lcom/android/fileexplorer/statistics/StatHelper;->getErrorMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "failed_reason"

    .line 35
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_25
    const-string p0, "page"

    .line 40
    const-string p1, "云盘tab页"

    .line 42
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string p0, "tip"

    .line 47
    const-string p1, "1096.2.0.1.24680"

    .line 49
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string p0, "cloud_file_upload"

    .line 54
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    return-void
.end method
