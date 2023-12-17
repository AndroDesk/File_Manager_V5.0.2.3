.class public Lcom/android/fileexplorer/util/FileGroupUtil;
.super Ljava/lang/Object;
.source "FileGroupUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTopPath(Lcom/android/fileexplorer/model/StorageInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-object p1

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Util;->getRelativePathAtVolume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTopPath(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_16

    .line 22
    return-object p1

    .line 23
    :cond_16
    new-instance v1, Ljava/io/File;

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2a

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2a
    return-object p1
.end method

.method public static isSpecialPath(Lcom/android/fileexplorer/model/StorageInfo;Ljava/lang/String;)Z
    .registers 3

    .line 1
    if-eqz p0, :cond_24

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->getRelativePathAtVolume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/GroupPathManager;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    if-nez p1, :cond_16

    .line 22
    return v0

    .line 23
    :cond_16
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTopPath(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/GroupPathManager;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result p0

    .line 35
    xor-int/2addr p0, v0

    .line 36
    return p0

    .line 37
    :cond_24
    const/4 p0, 0x0

    .line 38
    return p0
.end method
