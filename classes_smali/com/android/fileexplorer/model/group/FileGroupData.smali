.class public Lcom/android/fileexplorer/model/group/FileGroupData;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.source "FileGroupData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/group/FileGroupData$DataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;"
    }
.end annotation


# static fields
.field public static final NO_SECTION:I = -0x1


# instance fields
.field public id:J

.field public mCheckable:Z

.field public mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

.field public mIndexInParent:I

.field public mMultiData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mSingleData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public section:I

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    .line 12
    return-void
.end method


# virtual methods
.method public belongSomeGroup()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v1, v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public getChildrenCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mMultiData:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public isDivider()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Divider:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isMulti()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Children:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isParent()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Parent:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 5
    if-ne v0, v1, :cond_d

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method public isSingle()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Child:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method
