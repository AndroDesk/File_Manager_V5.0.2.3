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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/provider/ScanProvider;->mPreAsyncTime:J

    return-void
.end method

.method private isRectShowFile(I)Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_33

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_33

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_33

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_33

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_33

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p1, :cond_31

    goto :goto_33

    :cond_31
    const/4 p1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p1, 0x1

    :goto_34
    return p1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const-string v0, "param_path"

    invoke-virtual {p4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "operationType"

    invoke-virtual {p4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ownerPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";operationType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScanProvider"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_35
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_40
    sget v2, Lcom/android/fileexplorer/provider/ScanProvider;->OP_MODE_DELETE_FORFUSE:I

    if-eq v1, v2, :cond_64

    sget v2, Lcom/android/fileexplorer/provider/ScanProvider;->OP_MODE_DELETE_FOR_MEDIASTORE:I

    if-eq v1, v2, :cond_64

    sget v2, Lcom/android/fileexplorer/provider/ScanProvider;->OP_MODE_DELETE_INTO_TRASH:I

    if-ne v1, v2, :cond_4d

    goto :goto_64

    :cond_4d
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/ScanProvider;->isRectShowFile(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    :cond_5f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_64
    :goto_64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

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
