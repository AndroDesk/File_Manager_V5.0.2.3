.class abstract Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;
.source "FileInfoAbsGrouper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        "Lcom/android/fileexplorer/model/FileInfoGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mReverse:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;-><init>()V

    return-void
.end method


# virtual methods
.method public isReverse()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->mReverse:Z

    return v0
.end method

.method public setReverse(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->mReverse:Z

    return-void
.end method
