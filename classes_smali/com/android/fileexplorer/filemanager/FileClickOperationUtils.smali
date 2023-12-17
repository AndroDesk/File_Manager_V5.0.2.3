.class public Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;
.super Ljava/lang/Object;
.source "FileClickOperationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileClickOperationUtils"

.field private static docFileObserver:Lcom/android/cloud/observer/DocFileObserver;


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

.method public static getDocFileObserver()Lcom/android/cloud/observer/DocFileObserver;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/cloud/observer/DocFileObserver;->isStartFromSearch()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getImageList(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_b

    check-cast p2, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    :cond_b
    instance-of v0, p2, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v0, :cond_16

    check-cast p2, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    :cond_16
    instance-of v0, p2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_1f

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    const-string p2, ""

    :goto_21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v0

    :cond_29
    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/fileexplorer/model/AdFileInfo;

    if-nez v5, :cond_29

    instance-of v5, v4, Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz v5, :cond_3c

    goto :goto_29

    :cond_3c
    instance-of v5, v4, Lcom/android/cloud/bean/CloudFileInfo;

    const-string v6, "pic"

    if-eqz v5, :cond_5a

    check-cast v4, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_76

    :cond_57
    move v4, v0

    goto/16 :goto_d5

    :cond_5a
    instance-of v5, v4, Lcom/android/fileexplorer/model/FileInfo;

    const-string v7, "image/"

    if-eqz v5, :cond_7a

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    iget-object v2, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_76
    move-object v8, v4

    move v4, v2

    move-object v2, v8

    goto :goto_d5

    :cond_7a
    instance-of v5, v4, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v5, :cond_97

    check-cast v4, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {v4}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_d5

    :cond_97
    instance-of v5, v4, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v5, :cond_b6

    check-cast v4, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    iget-object v4, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    iget-object v4, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_d5

    :cond_b6
    instance-of v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz v5, :cond_d3

    check-cast v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-object v4, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v4, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_76

    :cond_d3
    move v4, v0

    move v5, v4

    :goto_d5
    if-eqz v5, :cond_29

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_dd

    move v1, v3

    :cond_dd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_29

    :cond_e1
    return v1
.end method

.method public static jumpToMiVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 13

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.video"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->Recent:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    invoke-static {v1, p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3a

    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/FileGroupUtil;->isSpecialPath(Lcom/android/fileexplorer/model/StorageInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v5

    goto :goto_3b

    :cond_3a
    move v3, v4

    :goto_3b
    if-eqz v3, :cond_3f

    const/4 v6, 0x2

    goto :goto_40

    :cond_3f
    move v6, v5

    :goto_40
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    if-eqz v3, :cond_48

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/FileGroupUtil;->getTopPath(Lcom/android/fileexplorer/model/StorageInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_48
    const-string v2, "mvplus://dfolder?"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "show_name"

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "show_path"

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anchor"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "deep_type"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ref"

    const-string p2, "fileExplorer_recent"

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_ad
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v2, v4, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "custom extra"

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->openOnSynergy(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)I

    return-void
.end method

.method public static onMirrorOperationClickForSave(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->createClipData(Ljava/util/List;)Landroid/content/ClipData;

    move-result-object p1

    const-string v1, "custom extra"

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->saveToSynergy(Landroid/app/Activity;Landroid/content/ClipData;Ljava/lang/String;)I

    return-void
.end method

.method public static onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_b

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_b

    :cond_a
    return-void

    :cond_b
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    const-string v1, "image/"

    if-eqz v0, :cond_cc

    move-object v0, p1

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileOpen(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V

    const-string v3, "folder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/model/Util;->scrollToCloudTab(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    const-string v3, "pic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-static {p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    const-string p0, "图片"

    invoke-static {p0, p5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_44
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    const-wide/32 v4, 0x5f5e100

    cmp-long v2, v2, v4

    if-gez v2, :cond_72

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    iget-wide v7, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string p0, "视频"

    invoke-static {p0, p5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_72
    iget-object p5, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_ef

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c0

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object p2

    if-eqz p2, :cond_bc

    invoke-virtual {p2}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p3

    sget-object p4, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    if-ne p3, p4, :cond_bc

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z

    move-result p3

    if-nez p3, :cond_bf

    invoke-virtual {p2}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Ljava/util/List;)V

    goto :goto_bf

    :cond_bc
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_bf
    :goto_bf
    return-void

    :cond_c0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    return-void

    :cond_cc
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v2, v3, v4, p5}, Lcom/android/fileexplorer/statistics/StatHelper;->localFileOpen(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_ef

    invoke-static {p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    return-void

    :cond_ef
    iget-object p5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5}, Lcom/android/fileexplorer/model/Util;->isInVisibleVolume(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12c

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/android/fileexplorer/model/ArchiveHelper;->checkIfArchive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12c

    if-eqz v2, :cond_111

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12c

    :cond_111
    if-eqz v2, :cond_11b

    const-string v1, "video/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12c

    :cond_11b
    if-eqz v2, :cond_125

    const-string v1, "audio/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12c

    :cond_125
    const p0, 0x7f11016d

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_12c
    instance-of v1, p1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_169

    invoke-static {v0}, Lcom/android/fileexplorer/util/WpsSupportUtil;->checkIfWpsSupportFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_169

    move-object v0, p1

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->requestDocModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/bean/CloudFileInfo;)V

    sget-object v1, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    if-eqz v1, :cond_143

    invoke-virtual {v1}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    :cond_143
    const-string v1, "startWatching doc:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocTest"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;

    new-instance v2, Lcom/android/cloud/observer/DocFileObserver;

    iget-object v3, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/cloud/observer/DocFileObserver;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    :cond_169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_191

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_174
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p5, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance v1, Lcom/android/fileexplorer/model/FileWithExt;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, p2, p5}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_174

    :cond_191
    new-instance p2, Lcom/android/fileexplorer/model/FileWithExt;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p5, p1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19f
    const/4 p1, 0x1

    invoke-static {p0, v0, p3, p4, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    return-void
.end method

.method public static onOperationClickFileOnSearchPage(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_1f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fileInfo is null, return. position = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileClickOperationUtils"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f11044e

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_1f
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_31

    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    if-nez v0, :cond_31

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_6a

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3b

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v1, 0x64

    if-le p2, v1, :cond_60

    const/16 p2, 0x32

    if-gt p3, p2, :cond_4f

    const/4 p2, 0x0

    const/16 v1, 0x65

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_60

    :cond_4f
    add-int/lit8 p2, p3, 0x32

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 v1, p2, -0x64

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    sub-int/2addr p3, v1

    :cond_60
    :goto_60
    move v4, p3

    move-object v3, v0

    const/4 v5, 0x0

    const-string v6, "搜索结果页"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    :goto_6a
    return-void
.end method

.method public static onOperationClickLocalFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;ILjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_b

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    if-nez v0, :cond_17

    const-string p0, "FileClickOperationUtils"

    const-string p1, "fileInfo is null"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_22

    move-object p1, v0

    check-cast p1, Lcom/android/cloud/bean/CloudFileInfo;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    :cond_22
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->isInVisibleVolume(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/fileexplorer/model/ArchiveHelper;->checkIfArchive(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    if-eqz v3, :cond_44

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    :cond_44
    if-eqz v3, :cond_4e

    const-string v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    :cond_4e
    if-eqz v3, :cond_58

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    :cond_58
    const p0, 0x7f11016d

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_5f
    if-eqz v1, :cond_97

    invoke-static {v2}, Lcom/android/fileexplorer/util/WpsSupportUtil;->checkIfWpsSupportFileType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->requestDocModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/bean/CloudFileInfo;)V

    sget-object v1, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    :cond_73
    const-string v1, "startWatching cloud tag doc:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocTest"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;

    new-instance v2, Lcom/android/cloud/observer/DocFileObserver;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/cloud/observer/DocFileObserver;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    :cond_97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_d0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_dc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-object v1, p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    instance-of v2, p2, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_ba

    check-cast p2, Lcom/android/cloud/bean/CloudFileInfo;

    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    :cond_ba
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c3

    const-string p2, ""

    goto :goto_c7

    :cond_c3
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_c7
    new-instance v2, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-direct {v2, v1, p2}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    :cond_d0
    new-instance p2, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    const/4 p1, 0x1

    invoke-static {p0, v0, p3, p4, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    return-void
.end method

.method public static onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->getImageList(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->setPreviewImageList(Ljava/util/List;I)V

    new-instance p1, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    const-class v0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_31

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    invoke-static {p0, p1, p2, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewSmbFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Z)V

    goto :goto_31

    :cond_14
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    invoke-static {p0, p1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewMTPFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Z)V

    goto :goto_31

    :cond_1b
    new-instance v0, Lcom/android/fileexplorer/model/FileWithExt;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v2, p2, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    :cond_31
    :goto_31
    return-void
.end method

.method private static requestDocModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/bean/CloudFileInfo;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v0}, La/b;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_2e
    return-void
.end method

.method public static stopDocFileObserver()V
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    :cond_7
    return-void
.end method
