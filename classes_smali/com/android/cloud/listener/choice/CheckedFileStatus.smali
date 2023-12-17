.class public Lcom/android/cloud/listener/choice/CheckedFileStatus;
.super Ljava/lang/Object;
.source "CheckedFileStatus.java"


# instance fields
.field private containCachedCloudFile:Z

.field private containLocalFile:Z

.field private containOnlyCloudFile:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCopySideFile()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile:Z

    .line 7
    if-eqz v0, :cond_e

    .line 9
    :cond_8
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public containCachedCloudFile()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    .line 3
    return v0
.end method

.method public containCloudFile()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method public containLocalFile()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile:Z

    .line 3
    return v0
.end method

.method public containOnlyCloudFile()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    .line 3
    return v0
.end method

.method public onlyContainCacheCloudFile()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    .line 7
    if-nez v0, :cond_e

    .line 9
    iget-boolean v0, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile:Z

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public setContainCachedCloudFile(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile:Z

    .line 3
    return-void
.end method

.method public setContainLocalFile(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile:Z

    .line 3
    return-void
.end method

.method public setContainOnlyCloudFile(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile:Z

    .line 3
    return-void
.end method
