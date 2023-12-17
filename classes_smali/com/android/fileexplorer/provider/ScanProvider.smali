.class public Lcom/android/fileexplorer/provider/ScanProvider;
.super Landroid/content/ContentProvider;
.source "ScanProvider.java"


# static fields
.field private static final FILE_ISDIRECTORY:Ljava/lang/String; = "file_isDirectory"

.field private static final KEY_FILE_FROM_PATH_MEDIA:Ljava/lang/String; = "param_path"

.field private static final KEY_FILE_MIMETYPE:Ljava/lang/String; = "file_mimeType"

.field private static final KEY_FILE_RELATIVEPATH:Ljava/lang/String; = "file_relativePath"

.field private static final KEY_FILE_VOLUMENAME:Ljava/lang/String; = "file_volumeName"

.field private static final KEY_OPERATION_TYPE:Ljava/lang/String; = "operationType"

.field private static final KEY_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackageName"

.field public static OP_MODE_DELETE_FORFUSE:I = 0x14

.field public static OP_MODE_DELETE_FOR_MEDIASTORE:I = 0x1e

.field public static OP_MODE_DELETE_INTO_TRASH:I = 0x28

.field public static OP_MODE_NORMAL:I = 0x0

.field public static OP_MODE_RENAME_DIRECTORY:I = 0xb

.field public static OP_MODE_RENAME_FILE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanProvider"

.field private static final TIME_INTERVAL:J = 0x7530L


# instance fields
.field private mPreAsyncTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/provider/ScanProvider;->mPreAsyncTime:J

    .line 8
    return-void
.end method

.method private isRectShowFile(I)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_33

    .line 9
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v0

    .line 15
    if-eq v0, p1, :cond_33

    .line 17
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v0

    .line 23
    if-eq v0, p1, :cond_33

    .line 25
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v0

    .line 31
    if-eq v0, p1, :cond_33

    .line 33
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v0

    .line 39
    if-eq v0, p1, :cond_33

    .line 41
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 46
    move-result v0

    .line 47
    if-ne v0, p1, :cond_31

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    const/4 p1, 0x0

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    :goto_33
    const/4 p1, 0x1

    .line 53
    :goto_34
    return p1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    .line 1
    const-string v0, "param_path"

    .line 3
    invoke-virtual {p4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "operationType"

    .line 9
    invoke-virtual {p4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v3, "ownerPackageName:"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, ";operationType:"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    const-string v3, "ScanProvider"

    .line 40
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_35

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_35
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_40

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_40
    sget v2, Lcom/android/fileexplorer/provider/ScanProvider;->OP_MODE_DELETE_FORFUSE:I

    .line 67
    if-eq v1, v2, :cond_64

    .line 69
    sget v2, Lcom/android/fileexplorer/provider/ScanProvider;->OP_MODE_DELETE_FOR_MEDIASTORE:I

    .line 71
    if-eq v1, v2, :cond_64

    .line 73
    sget v2, Lcom/android/fileexplorer/provider/ScanProvider;->OP_MODE_DELETE_INTO_TRASH:I

    .line 75
    if-ne v1, v2, :cond_4d

    .line 77
    goto :goto_64

    .line 78
    :cond_4d
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategory(Ljava/lang/String;)I

    .line 81
    move-result v0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/ScanProvider;->isRectShowFile(I)Z

    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5f

    .line 88
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 91
    move-result-object v0

    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 96
    :cond_5f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_64
    :goto_64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
