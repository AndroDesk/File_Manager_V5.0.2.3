.class public Lcom/android/fileexplorer/encryption/PrivateFile;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.source "PrivateFile.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;


# instance fields
.field private date:J

.field private decryptedFilePath:Ljava/lang/String;

.field private displayPath:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private headerPath:Ljava/lang/String;

.field private mCount:I

.field private mIsDir:Z

.field private mSize:J

.field private sourcePath:Ljava/lang/String;

.field private thumbPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V
    .registers 12

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->sourcePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->filePath:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->mIsDir:Z

    iput p9, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->mCount:I

    iput-wide p6, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->mSize:J

    iput-object p3, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->thumbPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->headerPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->displayPath:Ljava/lang/String;

    iput-wide p10, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->date:J

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->mCount:I

    return v0
.end method

.method public getDate()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->date:J

    return-wide v0
.end method

.method public getDecryptedFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->decryptedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->displayPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->headerPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameWithoutSuffix()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->mSize:J

    return-wide v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public isDir()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->mIsDir:Z

    return v0
.end method

.method public setDecryptedFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->decryptedFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/PrivateFile;->filePath:Ljava/lang/String;

    return-void
.end method
