.class Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/android/fileexplorer/search/SearchManager$IMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/search/SearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeredundantMergerFileItemImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/search/SearchManager;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/search/SearchManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;->this$0:Lcom/android/fileexplorer/search/SearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/search/SearchManager;Lcom/android/fileexplorer/search/SearchManager$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;-><init>(Lcom/android/fileexplorer/search/SearchManager;)V

    return-void
.end method


# virtual methods
.method public mergeList(Ljava/util/List;)Lcom/android/fileexplorer/search/SearchResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;)",
            "Lcom/android/fileexplorer/search/SearchResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_61

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_9

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 42
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 56
    if-nez v3, :cond_45

    .line 58
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    goto :goto_1d

    .line 70
    :cond_45
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    .line 73
    move-result-object v3

    .line 74
    sget-wide v4, Lcom/android/fileexplorer/apptag/FileUtils;->FILE_ID_FOR_MEDIA_STORE:J

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_1d

    .line 86
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    goto :goto_1d

    .line 98
    :cond_61
    new-instance p1, Ljava/util/ArrayList;

    .line 100
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object v0

    .line 111
    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_7e

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_6e

    .line 127
    :cond_7e
    new-instance v0, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;

    .line 129
    const/4 v1, 0x0

    .line 130
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;-><init>(Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;Lcom/android/fileexplorer/search/SearchManager$1;)V

    .line 133
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    new-instance v0, Lcom/android/fileexplorer/search/SearchResult;

    .line 138
    const-class v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 140
    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 143
    return-object v0
.end method
