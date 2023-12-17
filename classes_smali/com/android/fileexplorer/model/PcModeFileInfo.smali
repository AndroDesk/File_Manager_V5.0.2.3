.class public Lcom/android/fileexplorer/model/PcModeFileInfo;
.super Lcom/android/fileexplorer/model/FileInfo;
.source "PcModeFileInfo.java"


# instance fields
.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppName:Ljava/lang/String;

.field public mComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    iput-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    iget v0, p1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    iput v0, p0, Lcom/android/fileexplorer/model/FileInfo;->count:I

    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iput-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->subFileCategoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->subFileCategoryType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    iput-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->suffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->suffix:Ljava/lang/String;

    iget v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    iput v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    return-void
.end method
