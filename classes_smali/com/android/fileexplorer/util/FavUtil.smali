.class public Lcom/android/fileexplorer/util/FavUtil;
.super Ljava/lang/Object;
.source "FavUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getFavLocationByFavoriteItem(Ljava/util/List;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1f

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 26
    iget-object v1, v1, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->queryByLocation(Ljava/util/List;)Ljava/util/List;

    .line 39
    move-result-object p0

    .line 40
    new-instance v0, Ljava/util/HashSet;

    .line 42
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_44

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 61
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_30

    .line 69
    :cond_44
    return-object v0
.end method

.method public static getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1f

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->queryByLocation(Ljava/util/List;)Ljava/util/List;

    .line 39
    move-result-object p0

    .line 40
    new-instance v0, Ljava/util/HashSet;

    .line 42
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_48

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 61
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_30

    .line 73
    :cond_48
    return-object v0
.end method

.method public static getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_21

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 26
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_d

    .line 34
    :cond_21
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->queryByLocation(Ljava/util/List;)Ljava/util/List;

    .line 41
    move-result-object p0

    .line 42
    new-instance v0, Ljava/util/HashSet;

    .line 44
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4a

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 63
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_32

    .line 75
    :cond_4a
    return-object v0
.end method

.method public static getFavLocationByFileItemVO(Ljava/util/List;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_23

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 26
    iget-object v1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 28
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_d

    .line 36
    :cond_23
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->queryByLocation(Ljava/util/List;)Ljava/util/List;

    .line 43
    move-result-object p0

    .line 44
    new-instance v0, Ljava/util/HashSet;

    .line 46
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p0

    .line 53
    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4c

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 65
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_34

    .line 77
    :cond_4c
    return-object v0
.end method

.method public static getFavLocationByFileWithExt(Ljava/util/List;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1f

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/model/FileWithExt;

    .line 26
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileWithExt;->filePath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->queryByLocation(Ljava/util/List;)Ljava/util/List;

    .line 39
    move-result-object p0

    .line 40
    new-instance v0, Ljava/util/HashSet;

    .line 42
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_44

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 61
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_30

    .line 69
    :cond_44
    return-object v0
.end method

.method public static removeFromDbByFileInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1f

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 35
    move-result-object p0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->deleteByLocation(Ljava/util/List;Z)V

    .line 40
    return-void
.end method

.method public static removeFromDbByFileItem(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_9

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 23
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2a

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 35
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_16

    .line 43
    :cond_2a
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 46
    move-result-object p0

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->deleteByLocation(Ljava/util/List;Z)V

    .line 51
    return-void
.end method

.method public static removeFromDbByFileWithExt(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1f

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/model/FileWithExt;

    .line 26
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileWithExt;->filePath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 35
    move-result-object p0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->deleteByLocation(Ljava/util/List;Z)V

    .line 40
    return-void
.end method
