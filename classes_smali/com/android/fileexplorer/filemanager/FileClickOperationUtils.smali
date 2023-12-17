.class public Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;
.super Ljava/lang/Object;
.source "FileClickOperationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileClickOperationUtils"

.field private static docFileObserver:Lcom/android/cloud/observer/DocFileObserver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocFileObserver()Lcom/android/cloud/observer/DocFileObserver;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/android/cloud/observer/DocFileObserver;->isStartFromSearch()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    sget-object v0, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    .line 13
    return-object v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
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

    .line 1
    instance-of v0, p2, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p2, Lcom/android/cloud/bean/CloudFileItem;

    .line 7
    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    goto :goto_21

    .line 12
    :cond_b
    instance-of v0, p2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    check-cast p2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 18
    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    goto :goto_21

    .line 23
    :cond_16
    instance-of v0, p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 25
    if-eqz v0, :cond_1f

    .line 27
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 29
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const-string p2, ""

    .line 34
    :goto_21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p0

    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v1, -0x1

    .line 40
    const/4 v2, 0x0

    .line 41
    move v3, v0

    .line 42
    :cond_29
    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_e1

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    instance-of v5, v4, Lcom/android/fileexplorer/model/AdFileInfo;

    .line 54
    if-nez v5, :cond_29

    .line 56
    instance-of v5, v4, Lcom/android/fileexplorer/model/AdFileItem;

    .line 58
    if-eqz v5, :cond_3c

    .line 60
    goto :goto_29

    .line 61
    :cond_3c
    instance-of v5, v4, Lcom/android/cloud/bean/CloudFileInfo;

    .line 63
    const-string v6, "pic"

    .line 65
    if-eqz v5, :cond_5a

    .line 67
    check-cast v4, Lcom/android/cloud/bean/CloudFileInfo;

    .line 69
    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_57

    .line 79
    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v2

    .line 87
    goto :goto_76

    .line 88
    :cond_57
    move v4, v0

    .line 89
    goto/16 :goto_d5

    .line 91
    :cond_5a
    instance-of v5, v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 93
    const-string v7, "image/"

    .line 95
    if-eqz v5, :cond_7a

    .line 97
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 99
    iget-object v2, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 101
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    move-result v5

    .line 113
    iget-object v2, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 115
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v2

    .line 119
    :goto_76
    move-object v8, v4

    .line 120
    move v4, v2

    .line 121
    move-object v2, v8

    .line 122
    goto :goto_d5

    .line 123
    :cond_7a
    instance-of v5, v4, Lcom/android/cloud/bean/CloudFileItem;

    .line 125
    if-eqz v5, :cond_97

    .line 127
    check-cast v4, Lcom/android/cloud/bean/CloudFileItem;

    .line 129
    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_57

    .line 139
    invoke-static {v4}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v4

    .line 151
    goto :goto_d5

    .line 152
    :cond_97
    instance-of v5, v4, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 154
    if-eqz v5, :cond_b6

    .line 156
    check-cast v4, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 158
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    .line 161
    move-result-object v2

    .line 162
    iget-object v4, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 164
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v4

    .line 168
    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    move-result v5

    .line 176
    iget-object v4, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 178
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v4

    .line 182
    goto :goto_d5

    .line 183
    :cond_b6
    instance-of v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 185
    if-eqz v5, :cond_d3

    .line 187
    check-cast v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 189
    iget-object v4, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 191
    check-cast v4, Lcom/android/cloud/bean/CloudFileInfo;

    .line 193
    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_57

    .line 203
    invoke-virtual {v4}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    move-result v2

    .line 211
    goto :goto_76

    .line 212
    :cond_d3
    move v4, v0

    .line 213
    move v5, v4

    .line 214
    :goto_d5
    if-eqz v5, :cond_29

    .line 216
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    if-eqz v4, :cond_dd

    .line 221
    move v1, v3

    .line 222
    :cond_dd
    add-int/lit8 v3, v3, 0x1

    .line 224
    goto/16 :goto_29

    .line 226
    :cond_e1
    return v1
.end method

.method public static jumpToMiVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 13

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "com.miui.video"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string v1, "android.intent.action.VIEW"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string v1, "android.intent.category.DEFAULT"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    sget-object v1, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->Recent:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 23
    invoke-static {v1, p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 29
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v3, :cond_3a

    .line 39
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 42
    move-result-wide v6

    .line 43
    const-wide/16 v8, 0x0

    .line 45
    cmp-long v3, v6, v8

    .line 47
    if-nez v3, :cond_3a

    .line 49
    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 51
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/FileGroupUtil;->isSpecialPath(Lcom/android/fileexplorer/model/StorageInfo;Ljava/lang/String;)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3a

    .line 57
    move v3, v5

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v3, v4

    .line 60
    :goto_3b
    if-eqz v3, :cond_3f

    .line 62
    const/4 v6, 0x2

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v6, v5

    .line 65
    :goto_40
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 67
    if-eqz v3, :cond_48

    .line 69
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/FileGroupUtil;->getTopPath(Lcom/android/fileexplorer/model/StorageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    :cond_48
    const-string v2, "mvplus://dfolder?"

    .line 75
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object v2

    .line 79
    new-instance v3, Ljava/util/HashMap;

    .line 81
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 84
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    const-string v7, "show_name"

    .line 90
    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    const-string v1, "show_path"

    .line 99
    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    const-string p2, "anchor"

    .line 112
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    const-string p2, "deep_type"

    .line 121
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string p1, "ref"

    .line 126
    const-string p2, "fileExplorer_recent"

    .line 128
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object p1

    .line 139
    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_ad

    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Ljava/lang/String;

    .line 151
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "="

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object p2

    .line 163
    check-cast p2, Ljava/lang/String;

    .line 165
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string p2, "&"

    .line 170
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    goto :goto_8a

    .line 174
    :cond_ad
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 177
    move-result p1

    .line 178
    sub-int/2addr p1, v5

    .line 179
    invoke-virtual {v2, v4, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method public static onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 13
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 19
    move-result-object p1

    .line 20
    const-string v1, "custom extra"

    .line 22
    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->openOnSynergy(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)I

    .line 25
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

    .line 1
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->createClipData(Ljava/util/List;)Landroid/content/ClipData;

    .line 12
    move-result-object p1

    .line 13
    const-string v1, "custom extra"

    .line 15
    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->saveToSynergy(Landroid/app/Activity;Landroid/content/ClipData;Ljava/lang/String;)I

    .line 18
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

    .line 2
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

    .line 1
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

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_b

    :cond_a
    return-void

    .line 4
    :cond_b
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    const-string v1, "image/"

    if-eqz v0, :cond_cc

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 6
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v0, p5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileOpen(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V

    const-string v3, "folder"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 9
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

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 11
    invoke-static {p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    const-string p0, "图片"

    .line 12
    invoke-static {p0, p5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_44
    const-string v3, "video"

    .line 13
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

    .line 14
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    iget-wide v7, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string p0, "视频"

    .line 15
    invoke-static {p0, p5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_72
    iget-object p5, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_ef

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c0

    .line 20
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object p2

    if-eqz p2, :cond_bc

    .line 21
    invoke-virtual {p2}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p3

    sget-object p4, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    if-ne p3, p4, :cond_bc

    .line 22
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z

    move-result p3

    if-nez p3, :cond_bf

    .line 23
    invoke-virtual {p2}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Ljava/util/List;)V

    goto :goto_bf

    .line 24
    :cond_bc
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_bf
    :goto_bf
    return-void

    .line 25
    :cond_c0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    return-void

    .line 28
    :cond_cc
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v2, v3, v4, p5}, Lcom/android/fileexplorer/statistics/StatHelper;->localFileOpen(Ljava/lang/String;JLjava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_ef

    .line 31
    invoke-static {p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_ef
    iget-object p5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 33
    invoke-static {p5}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {p5}, Lcom/android/fileexplorer/model/Util;->isInVisibleVolume(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12c

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/android/fileexplorer/model/ArchiveHelper;->checkIfArchive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12c

    if-eqz v2, :cond_111

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12c

    :cond_111
    if-eqz v2, :cond_11b

    const-string v1, "video/"

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12c

    :cond_11b
    if-eqz v2, :cond_125

    const-string v1, "audio/"

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12c

    :cond_125
    const p0, 0x7f11016d

    .line 40
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    .line 41
    :cond_12c
    instance-of v1, p1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_169

    invoke-static {v0}, Lcom/android/fileexplorer/util/WpsSupportUtil;->checkIfWpsSupportFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->requestDocModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/bean/CloudFileInfo;)V

    .line 43
    sget-object v1, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    if-eqz v1, :cond_143

    .line 44
    invoke-virtual {v1}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    :cond_143
    const-string v1, "startWatching doc:"

    .line 45
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocTest"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    instance-of v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;

    .line 48
    new-instance v2, Lcom/android/cloud/observer/DocFileObserver;

    iget-object v3, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/cloud/observer/DocFileObserver;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    .line 49
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 50
    :cond_169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_191

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_174
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 52
    iget-object p5, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 53
    new-instance v1, Lcom/android/fileexplorer/model/FileWithExt;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, p2, p5}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_174

    .line 54
    :cond_191
    new-instance p2, Lcom/android/fileexplorer/model/FileWithExt;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p5, p1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19f
    const/4 p1, 0x1

    .line 56
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

    .line 1
    if-nez p1, :cond_1f

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string p1, "fileInfo is null, return. position = "

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    const-string p1, "FileClickOperationUtils"

    .line 22
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const p0, 0x7f11044e

    .line 28
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 31
    return-void

    .line 32
    :cond_1f
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 34
    if-eqz v0, :cond_31

    .line 36
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 38
    if-nez v0, :cond_31

    .line 40
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 43
    move-result-object p0

    .line 44
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 46
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 49
    goto :goto_6a

    .line 50
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    if-eqz p2, :cond_3b

    .line 57
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result p2

    .line 64
    const/16 v1, 0x64

    .line 66
    if-le p2, v1, :cond_60

    .line 68
    const/16 p2, 0x32

    .line 70
    if-gt p3, p2, :cond_4f

    .line 72
    const/4 p2, 0x0

    .line 73
    const/16 v1, 0x65

    .line 75
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 78
    move-result-object v0

    .line 79
    goto :goto_60

    .line 80
    :cond_4f
    add-int/lit8 p2, p3, 0x32

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v1

    .line 86
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 89
    move-result p2

    .line 90
    add-int/lit8 v1, p2, -0x64

    .line 92
    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 95
    move-result-object v0

    .line 96
    sub-int/2addr p3, v1

    .line 97
    :cond_60
    :goto_60
    move v4, p3

    .line 98
    move-object v3, v0

    .line 99
    const/4 v5, 0x0

    .line 100
    const-string v6, "搜索结果页"

    .line 102
    move-object v1, p0

    .line 103
    move-object v2, p1

    .line 104
    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 107
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

    .line 1
    if-nez p1, :cond_b

    .line 3
    if-eqz p2, :cond_a

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-gt v0, p3, :cond_b

    .line 11
    :cond_a
    return-void

    .line 12
    :cond_b
    iget-object v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 14
    if-nez v0, :cond_17

    .line 16
    const-string p0, "FileClickOperationUtils"

    .line 18
    const-string p1, "fileInfo is null"

    .line 20
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    :cond_17
    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 26
    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 28
    if-eqz v1, :cond_22

    .line 30
    move-object p1, v0

    .line 31
    check-cast p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 33
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 35
    :cond_22
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->isInVisibleVolume(Ljava/lang/String;)Z

    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_5f

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4, p1}, Lcom/android/fileexplorer/model/ArchiveHelper;->checkIfArchive(Ljava/lang/String;)Z

    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_5f

    .line 59
    if-eqz v3, :cond_44

    .line 61
    const-string v4, "image/"

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_5f

    .line 69
    :cond_44
    if-eqz v3, :cond_4e

    .line 71
    const-string v4, "video/"

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_5f

    .line 79
    :cond_4e
    if-eqz v3, :cond_58

    .line 81
    const-string v4, "audio/"

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_5f

    .line 89
    :cond_58
    const p0, 0x7f11016d

    .line 92
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 95
    return-void

    .line 96
    :cond_5f
    if-eqz v1, :cond_97

    .line 98
    invoke-static {v2}, Lcom/android/fileexplorer/util/WpsSupportUtil;->checkIfWpsSupportFileType(Ljava/lang/String;)Z

    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_97

    .line 104
    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 106
    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->requestDocModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/bean/CloudFileInfo;)V

    .line 109
    sget-object v1, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    .line 111
    if-eqz v1, :cond_73

    .line 113
    invoke-virtual {v1}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    .line 116
    :cond_73
    const-string v1, "startWatching cloud tag doc:"

    .line 118
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    move-result-object v1

    .line 122
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    const-string v2, "DocTest"

    .line 133
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    instance-of v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;

    .line 138
    new-instance v2, Lcom/android/cloud/observer/DocFileObserver;

    .line 140
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/cloud/observer/DocFileObserver;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    sput-object v2, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    .line 149
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 152
    :cond_97
    new-instance v0, Ljava/util/ArrayList;

    .line 154
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    if-eqz p2, :cond_d0

    .line 159
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    move-result-object p1

    .line 163
    :goto_a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_dc

    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    move-result-object p2

    .line 173
    check-cast p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 175
    iget-object v1, p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 177
    iget-object p2, p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 179
    instance-of v2, p2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 181
    if-eqz v2, :cond_ba

    .line 183
    check-cast p2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 185
    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 187
    :cond_ba
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_c3

    .line 193
    const-string p2, ""

    .line 195
    goto :goto_c7

    .line 196
    :cond_c3
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object p2

    .line 200
    :goto_c7
    new-instance v2, Lcom/android/fileexplorer/model/FileWithExt;

    .line 202
    invoke-direct {v2, v1, p2}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    goto :goto_a2

    .line 209
    :cond_d0
    new-instance p2, Lcom/android/fileexplorer/model/FileWithExt;

    .line 211
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    invoke-direct {p2, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_dc
    const/4 p1, 0x1

    .line 222
    invoke-static {p0, v0, p3, p4, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    .line 225
    return-void
.end method

.method public static onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p1, v0, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->getImageList(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->setPreviewImageList(Ljava/util/List;I)V

    .line 17
    new-instance p1, Landroid/content/Intent;

    .line 19
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 22
    move-result-object p2

    .line 23
    const-class v0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 25
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public static onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_31

    .line 3
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_31

    .line 11
    iget v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 13
    const/4 v1, 0x3

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne v0, v1, :cond_14

    .line 17
    invoke-static {p0, p1, p2, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewSmbFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Z)V

    .line 20
    goto :goto_31

    .line 21
    :cond_14
    const/4 v1, 0x4

    .line 22
    if-ne v0, v1, :cond_1b

    .line 24
    invoke-static {p0, p1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewMTPFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Z)V

    .line 27
    goto :goto_31

    .line 28
    :cond_1b
    new-instance v0, Lcom/android/fileexplorer/model/FileWithExt;

    .line 30
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {p0, p1, v2, p2, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    .line 50
    :cond_31
    :goto_31
    return-void
.end method

.method private static requestDocModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/bean/CloudFileInfo;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getSha1()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2e

    .line 18
    invoke-static {v0}, La/b;->c(Ljava/io/File;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getSha1()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2e

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {p0, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 47
    :cond_2e
    return-void
.end method

.method public static stopDocFileObserver()V
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->docFileObserver:Lcom/android/cloud/observer/DocFileObserver;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    .line 8
    :cond_7
    return-void
.end method
