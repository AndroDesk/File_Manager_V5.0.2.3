.class public Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;
.super Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
.source "FilePrivateRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter<",
        "Lcom/android/fileexplorer/encryption/PrivateFile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_27

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_27

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, 0x0

    .line 29
    cmp-long v2, v2, v0

    .line 31
    if-eqz v2, :cond_21

    .line 33
    return-wide v0

    .line 34
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 37
    move-result p1

    .line 38
    int-to-long v0, p1

    .line 39
    return-wide v0

    .line 40
    :cond_27
    const-wide/16 v0, -0x1

    .line 42
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->mViewType:I

    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p1, v0, :cond_7

    .line 6
    const/16 p1, 0x16

    .line 8
    :cond_7
    return p1
.end method
