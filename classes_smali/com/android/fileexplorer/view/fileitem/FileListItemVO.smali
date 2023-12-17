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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->count:I

    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameWithoutSuffix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDir()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v0, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    invoke-interface {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    move-result v0

    return v0
.end method
