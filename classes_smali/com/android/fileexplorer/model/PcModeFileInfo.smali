.class public Lcom/android/fileexplorer/model/PcModeFileInfo;
.super Lcom/android/fileexplorer/model/FileInfo;
.source "PcModeFileInfo.java"


# instance fields
.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppName:Ljava/lang/String;

.field public mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 12
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    .line 24
    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 26
    iput-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 28
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 32
    iget v0, p1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 34
    iput v0, p0, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 36
    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 38
    iput-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 40
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 44
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 48
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 52
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 54
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 56
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->subFileCategoryType:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->subFileCategoryType:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 62
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 64
    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    .line 66
    iput-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    .line 68
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->suffix:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->suffix:Ljava/lang/String;

    .line 72
    iget v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 74
    iput v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 76
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 78
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 80
    return-void
.end method
