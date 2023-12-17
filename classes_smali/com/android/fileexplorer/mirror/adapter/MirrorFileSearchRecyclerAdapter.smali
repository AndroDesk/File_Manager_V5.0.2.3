.class public Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;
.super Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;
.source "MirrorFileSearchRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter<",
        "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileSearchRecyclerAdapter"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getEditableItemCount()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1f

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 23
    iget v2, v2, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 25
    const/16 v3, 0x15

    .line 27
    if-ne v2, v3, :cond_a

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_a

    .line 32
    :cond_1f
    const-string v0, "getEditableItemCount editCount = "

    .line 34
    const-string v2, "FileSearchRecyclerAdapter"

    .line 36
    invoke-static {v0, v1, v2}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    return v1
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_2d

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 19
    iget v0, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 21
    sget-object v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v1

    .line 27
    if-eq v0, v1, :cond_22

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 32
    move-result p1

    .line 33
    int-to-long v0, p1

    .line 34
    return-wide v0

    .line 35
    :cond_22
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 37
    if-eqz p1, :cond_2d

    .line 39
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 44
    move-result-wide v0

    .line 45
    return-wide v0

    .line 46
    :cond_2d
    const-wide/16 v0, -0x1

    .line 48
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 9
    iget p1, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 11
    return p1
.end method

.method public isItemCheckable(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 9
    iget p1, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 11
    const/16 v0, 0x15

    .line 13
    if-ne p1, v0, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1
.end method
