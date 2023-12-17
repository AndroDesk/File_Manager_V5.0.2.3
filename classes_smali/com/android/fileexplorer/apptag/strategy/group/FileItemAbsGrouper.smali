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
.field public static final GROUP_BY_APP:I

.field public static final GROUP_BY_DATE:I


# instance fields
.field private mReverse:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;->GROUP_BY_APP:I

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

    iget-boolean v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;->mReverse:Z

    return v0
.end method

.method public setReverse(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;->mReverse:Z

    return-void
.end method
