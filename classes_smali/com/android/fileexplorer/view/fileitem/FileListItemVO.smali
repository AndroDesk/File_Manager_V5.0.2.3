.class public Lcom/android/fileexplorer/view/fileitem/FileListItemVO;
.super Ljava/lang/Object;
.source "FileListItemVO.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;


# instance fields
.field public count:I

.field public fileId:J

.field public filePath:Ljava/lang/String;

.field public imageParentPadding:I

.field public imageParentRes:I

.field public info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

.field public isDirectory:Z

.field public modifiedTime:Ljava/lang/String;

.field public name:Ljava/lang/CharSequence;

.field public owner:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public resId:I

.field public size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->count:I

    .line 7
    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getNameWithoutSuffix()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public isDir()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method
