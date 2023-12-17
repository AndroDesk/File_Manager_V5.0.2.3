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
.field public static final NO_SECTION:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/group/FileGroupData;->NO_SECTION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    iput v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    return-void
.end method


# virtual methods
.method public belongSomeGroup()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getChildrenCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mMultiData:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isDivider()Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Divider:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iget-object v1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isMulti()Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Children:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iget-object v1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isParent()Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Parent:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iget-object v1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isSingle()Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Child:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iget-object v1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
