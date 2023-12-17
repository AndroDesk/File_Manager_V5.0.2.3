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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/search/SearchManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;->this$0:Lcom/android/fileexplorer/search/SearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/search/SearchManager;Lcom/android/fileexplorer/search/SearchManager$1;)V
    .registers 3

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v1}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    if-nez v3, :cond_45

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_45
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    move-result-object v3

    sget-wide v4, Lcom/android/fileexplorer/apptag/FileUtils;->FILE_ID_FOR_MEDIA_STORE:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_7e
    new-instance v0, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;-><init>(Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;Lcom/android/fileexplorer/search/SearchManager$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/android/fileexplorer/search/SearchResult;

    const-class v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method
