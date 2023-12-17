.class abstract Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;
.source "FileItemAbsGrouper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        "Lcom/android/fileexplorer/dao/file/FileGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final GROUP_BY_APP:I = 0x1

.field public static final GROUP_BY_DATE:I


# instance fields
.field private mReverse:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public isReverse()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;->mReverse:Z

    .line 3
    return v0
.end method

.method public setReverse(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;->mReverse:Z

    .line 3
    return-void
.end method
