.class public Lcom/android/fileexplorer/util/DefaultConfigInitUtils;
.super Ljava/lang/Object;
.source "DefaultConfigInitUtils.java"


# static fields
.field private static final DING_FILE_PATH:Ljava/lang/String; = "DingTalk"


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

.method public static initScanFile()V
    .registers 0

    invoke-static {}, Lcom/android/fileexplorer/util/WechatUtil;->scanQQAndWeChatFilePath()V

    invoke-static {}, Lcom/android/fileexplorer/util/DefaultConfigInitUtils;->scanDingDing()V

    return-void
.end method

.method private static scanDingDing()V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DingTalk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/util/MediaScanUtil;->scanFolderWithOutNotify(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_22
    return-void
.end method
