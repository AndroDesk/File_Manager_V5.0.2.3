.class public Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;
.super Ljava/lang/Object;
.source "ExternalStorageAppFilesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil$PackageName;
    }
.end annotation


# static fields
.field public static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field public static final DIR_DATA:Ljava/lang/String; = "data"

.field public static final DIR_FILES:Ljava/lang/String; = "files"

.field public static final DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final TAG:Ljava/lang/String; = "ExternalStorageAppFilesUtil"

.field public static final ZSXQ_DIR_DOCUMENTS:Ljava/lang/String; = "documents"

.field public static final ZSXQ_DOCUMENTS_FAKE_PATH:Ljava/lang/String; = "[0-9a-z]{64}"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    const-string v1, "files"

    .line 15
    const-string v2, "data"

    .line 17
    const-string v3, "Android"

    .line 19
    if-eqz v0, :cond_2f

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    invoke-static {p1, v0, v3, v0, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 55
    invoke-static {v0, v4, v3, v4, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v0, v4, p0, v4, v1}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v0, v4, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public static getZSXQDocDir()[Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    const-string v2, "com.unnoo.quan"

    .line 13
    const-string v3, "documents"

    .line 15
    invoke-static {v2, v3}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->getExternalFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "externalFile = "

    .line 24
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const-string v2, "ExternalStorageAppFilesUtil"

    .line 41
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v2, :cond_75

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_75

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_44

    .line 68
    return-object v3

    .line 69
    :cond_44
    const-string v2, "[0-9a-z]{64}"

    .line 71
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 74
    move-result-object v2

    .line 75
    array-length v3, v1

    .line 76
    const/4 v4, 0x0

    .line 77
    :goto_4c
    if-ge v4, v3, :cond_68

    .line 79
    aget-object v5, v1, v4

    .line 81
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_65

    .line 95
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_65
    add-int/lit8 v4, v4, 0x1

    .line 104
    goto :goto_4c

    .line 105
    :cond_68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 108
    move-result v1

    .line 109
    new-array v1, v1, [Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    check-cast v0, [Ljava/lang/String;

    .line 117
    return-object v0

    .line 118
    :cond_75
    return-object v3
.end method

.method public static getZSXQDocDirTopParent()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "com.unnoo.quan"

    .line 3
    const-string v1, "documents"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->getExternalFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static isZSXQParentDir(Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    array-length v2, v0

    .line 14
    move-object v3, p0

    .line 15
    :goto_e
    if-ge v1, v2, :cond_23

    .line 17
    aget-object v4, v0, v1

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_20

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_e

    .line 36
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v0, "isZSXQParentDir relPath = "

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    const-string v0, "ExternalStorageAppFilesUtil"

    .line 55
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->getZSXQDocDirTopParent()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    move-result p0

    .line 66
    return p0
.end method
