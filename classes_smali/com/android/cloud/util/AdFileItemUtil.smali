.class public Lcom/android/cloud/util/AdFileItemUtil;
.super Ljava/lang/Object;
.source "AdFileItemUtil.java"


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

.method public static isAd(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 1

    if-eqz p0, :cond_8

    instance-of p0, p0, Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isAd(Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 1

    if-eqz p0, :cond_8

    instance-of p0, p0, Lcom/android/fileexplorer/model/AdFileInfo;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
