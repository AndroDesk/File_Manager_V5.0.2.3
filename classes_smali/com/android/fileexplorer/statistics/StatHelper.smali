.class public Lcom/android/fileexplorer/statistics/StatHelper;
.super Ljava/lang/Object;
.source "StatHelper.java"


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

.method public static bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "function"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string p1, "1096.5.2.1.25473"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "window_click"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bottomFunctionExpose(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "bottom_function_expose"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static clickDownload(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "download_button_click"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static clickFull()V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    const-string v2, "云盘tab页"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tip"

    const-string v2, "1096.2.2.1.24677"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "window_click"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static clickLabel(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    const-string v2, "手机tab页"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "label"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "position"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string p1, "1096.4.0.1.24678"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "label_click"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static clickLoginGuide()V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    const-string v2, "云盘tab页"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tip"

    const-string v2, "1096.2.0.1.24679"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "click_login_guide"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static clickMore(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "more_button_click"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static clickSearch(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string v1, "1096.5.1.1.24682"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "search_button_click"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static cloudFileCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "file_total_num"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "file_type"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string v1, "云盘tab页"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cache_way"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cloud_file_cache"

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

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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

    instance-of v4, v3, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v4, :cond_e

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    check-cast v3, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v3}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/statistics/StatHelper;->getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "file_type"

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_36
    const-string v2, "file_list"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "file_total_num"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string v1, "云盘tab页"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cache_way"

    const-string v1, "点击缓存到本地功能"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cloud_file_cache"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static cloudFileOpen(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    if-nez p0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "file_type"

    if-eqz v1, :cond_22

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_22
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2d
    const-string p0, "open_result"

    const-string v1, "成功"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p1, "云盘tab页"

    :cond_3c
    const-string p0, "page"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cloud_file_open"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "file_type"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cloud_file_preview"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static createFolder(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "create_folder"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

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

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getFileListMap(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v1, "file_list"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "file_total_num"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "file_delete"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

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

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "target_directory"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/fileexplorer/statistics/StatHelper;->getFileListMap(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string p1, "file_list"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_20

    const-string p0, "file_move"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_25

    :cond_20
    const-string p0, "file_copy"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

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

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getFileListMap(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v1, "file_list"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "file_total_num"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "file_share"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "未知"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_6c

    goto :goto_56

    :sswitch_15
    const-string v2, "video"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_56

    :cond_1e
    const/4 v0, 0x5

    goto :goto_56

    :sswitch_20
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_56

    :cond_29
    const/4 v0, 0x4

    goto :goto_56

    :sswitch_2b
    const-string v2, "zip"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_56

    :cond_34
    const/4 v0, 0x3

    goto :goto_56

    :sswitch_36
    const-string v2, "pic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_56

    :cond_3f
    const/4 v0, 0x2

    goto :goto_56

    :sswitch_41
    const-string v2, "doc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto :goto_56

    :cond_4a
    const/4 v0, 0x1

    goto :goto_56

    :sswitch_4c
    const-string v2, "apk"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    packed-switch v0, :pswitch_data_86

    return-object v1

    :pswitch_5a  #0x5
    const-string p0, "视频"

    return-object p0

    :pswitch_5d  #0x4
    const-string p0, "音乐"

    return-object p0

    :pswitch_60  #0x3
    const-string p0, "压缩包"

    return-object p0

    :pswitch_63  #0x2
    const-string p0, "图片"

    return-object p0

    :pswitch_66  #0x1
    const-string p0, "文档"

    return-object p0

    :pswitch_69  #0x0
    const-string p0, "安装包"

    return-object p0

    :sswitch_data_6c
    .sparse-switch
        0x17a1c -> :sswitch_4c
        0x18538 -> :sswitch_41
        0x1b18a -> :sswitch_36
        0x1d721 -> :sswitch_2b
        0x58d9bd6 -> :sswitch_20
        0x6b0147b -> :sswitch_15
    .end sparse-switch

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    instance-of v3, v1, Lcom/android/cloud/bean/CloudFileInfo;

    const-string v4, "if_cloud_file"

    const-string v5, "file_type"

    if-eqz v3, :cond_38

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/statistics/StatHelper;->getCloudFileTypeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "true"

    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_38
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "false"

    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

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

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "未知"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isPicture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "图片"

    return-object p0

    :cond_12
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isMovie(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "视频"

    return-object p0

    :cond_1b
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "安装包"

    return-object p0

    :cond_24
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isWord(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "pdf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_46

    :cond_33
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isZip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string p0, "压缩包"

    return-object p0

    :cond_3c
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->isMusic(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    const-string p0, "音乐"

    return-object p0

    :cond_45
    return-object v1

    :cond_46
    :goto_46
    const-string p0, "文档"

    return-object p0
.end method

.method public static getPageNameByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .registers 3

    const-string v0, "手机tab页"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    sget-object v1, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_2c

    return-object v0

    :pswitch_11  #0xf
    const-string p0, "最近tab页"

    return-object p0

    :pswitch_14  #0xd, 0xe
    const-string p0, "手机tab页_传输与下载页"

    return-object p0

    :pswitch_17  #0xc
    const-string p0, "手机tab页_收藏页"

    return-object p0

    :pswitch_1a  #0xb
    const-string p0, "手机tab页_安装包页"

    return-object p0

    :pswitch_1d  #0xa
    const-string p0, "手机tab页_压缩包页"

    return-object p0

    :pswitch_20  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    const-string p0, "手机tab页_文档页"

    return-object p0

    :pswitch_23  #0x3
    const-string p0, "手机tab页_图片页"

    return-object p0

    :pswitch_26  #0x2
    const-string p0, "手机tab页_视频页"

    return-object p0

    :pswitch_29  #0x1
    const-string p0, "手机tab页_音乐页"

    return-object p0

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getDaysBetween(JJ)J

    move-result-wide p1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "file_type"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "最近tab页"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-nez p0, :cond_23

    const-string p0, "今天"

    goto :goto_45

    :cond_23
    const-wide/16 v1, 0x1

    cmp-long p0, p1, v1

    if-nez p0, :cond_2c

    const-string p0, "昨天"

    goto :goto_45

    :cond_2c
    const-wide/16 v1, 0x2

    cmp-long p0, p1, v1

    if-ltz p0, :cond_43

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%d天前"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    :cond_43
    const-string p0, ""

    :goto_45
    const-string p1, "file_date_partition"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_52

    const-string p3, "手机tab页"

    :cond_52
    const-string p0, "page"

    invoke-virtual {v0, p0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "local_file_open"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static open(Landroid/content/Intent;)V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "点击icon"

    goto :goto_16

    :cond_14
    const-string p0, "其他"

    :goto_16
    const-string v1, "open_way"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string v1, "1096.5.0.1.24681"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "open"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportSettingStatus()V
    .registers 7

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "un_login"

    goto :goto_f

    :cond_d
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_f
    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatPreferenceUtil;->getLastReportSetting(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/fileexplorer/model/TimeUtils;->isInSameDay(JJ)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/statistics/StatPreferenceUtil;->saveLastReportSetting(Ljava/lang/String;J)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowEncrypt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "if_private_file_encryption"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "if_hidden_cloud_file"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "if_hidden_screenshots"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getShowDotAndHiddenFiles()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "if_show_hidden_files"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isCloudUseMobileData()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "if_mobile_network_synchronization"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_75
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a3

    const/4 v4, 0x4

    if-ge v1, v4, :cond_a3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    sget-object v6, Lcom/fileexplorer/commonlibrary/CustomApplication;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "label"

    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :cond_a3
    const-string v1, "label_list"

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tip"

    const-string v2, "1096.5.0.1.24683"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static search(ZLjava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p0, :cond_c

    const-string v1, "file_type"

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "if_used_source"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "search"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static showCloudDriverTab(ZLcom/android/fileexplorer/controller/FabPreference;)V
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "if_first_login_page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatConstants;->getFileArrangeWay(Lcom/android/fileexplorer/controller/FabPreference;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "file_arrange_way"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatConstants;->getFileOrderWay(Lcom/android/fileexplorer/controller/FabPreference;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "file_order_way"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string p1, "云盘tab页"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string p1, "1096.2.0.1.24675"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_expose"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static showFull()V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    const-string v2, "云盘tab页"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tip"

    const-string v2, "1096.2.2.1.24676"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "window_expose"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static showPhoneTab(Lcom/android/fileexplorer/controller/FabPreference;)V
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatConstants;->getFileArrangeWay(Lcom/android/fileexplorer/controller/FabPreference;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_arrange_way"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatConstants;->getFileOrderWay(Lcom/android/fileexplorer/controller/FabPreference;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "file_order_way"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string v1, "手机tab页"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string v1, "1096.4.0.1.25472"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_expose"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static showRecentTab(I)V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "file_nums_today"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string v1, "最近tab页"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string v1, "1096.3.0.1.24673"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_expose"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static topFunctionClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "function"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string p1, "1096.5.1.1.25471"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "window_click"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadFailWindowClick(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "file_type"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed_reason"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "button_name"

    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string p1, "云盘tab页"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string p1, "1096.2.1.1.24672"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "window_click"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadFailWindowShow(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "file_type"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed_reason"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page"

    const-string p1, "云盘tab页"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string p1, "1096.2.1.1.24671"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "window_expose"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadToCloud(Ljava/lang/String;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "file_type"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_13

    const-string p0, "成功"

    goto :goto_15

    :cond_13
    const-string p0, " 失败"

    :goto_15
    const-string v1, "upload_result"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_25

    invoke-static {p2}, Lcom/android/fileexplorer/statistics/StatHelper;->getErrorMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed_reason"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const-string p0, "page"

    const-string p1, "云盘tab页"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tip"

    const-string p1, "1096.2.0.1.24680"

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cloud_file_upload"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
