.class public Lcom/android/cloud/listener/choice/CheckedFileStatus;
.super Ljava/lang/Object;
.source "CheckedFileStatus.java"


# instance fields
.field private containCachedCloudFile:Z

.field private containLocalFile:Z

.field private containOnlyCloudFile:Z


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


# virtual methods
.method public canCopySideFile()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile:Z

    if-eqz v0, :cond_e

    :cond_8
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public containCachedCloudFile()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    return v0
.end method

.method public containCloudFile()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public containLocalFile()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile:Z

    return v0
.end method

.method public containOnlyCloudFile()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    return v0
.end method

.method public onlyContainCacheCloudFile()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public setContainCachedCloudFile(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    return-void
.end method

.method public setContainLocalFile(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile:Z

    return-void
.end method

.method public setContainOnlyCloudFile(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    return-void
.end method
