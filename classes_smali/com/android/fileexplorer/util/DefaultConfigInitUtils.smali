.class public Lcom/android/fileexplorer/util/DefaultConfigInitUtils;
.super Ljava/lang/Object;
.source "DefaultConfigInitUtils.java"


# static fields
.field private static final DING_FILE_PATH:Ljava/lang/String; = "DingTalk"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initScanFile()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/WechatUtil;->scanQQAndWeChatFilePath()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/DefaultConfigInitUtils;->scanDingDing()V

    .line 7
    return-void
.end method

.method private static scanDingDing()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_22

    .line 9
    aget-object v3, v0, v2

    .line 11
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v4, "DingTalk"

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/android/fileexplorer/util/MediaScanUtil;->scanFolderWithOutNotify(Ljava/lang/String;)V

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_6

    .line 35
    :cond_22
    return-void
.end method
