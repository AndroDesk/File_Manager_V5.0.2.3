.class abstract Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;
.super Ljava/lang/Object;
.source "FileSortManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/controller/FileSortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbsFileComparator"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/controller/FileSortManager;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/controller/FileSortManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;->this$0:Lcom/android/fileexplorer/controller/FileSortManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/controller/FileSortManager;Lcom/android/fileexplorer/controller/FileSortManager$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 7
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 9
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 11
    iget-boolean v1, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 13
    if-ne v0, v1, :cond_13

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;->doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    if-eqz v0, :cond_17

    .line 22
    const/4 p1, -0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p1, 0x1

    .line 25
    :goto_18
    return p1

    .line 26
    :cond_19
    instance-of v0, p1, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 28
    if-eqz v0, :cond_2a

    .line 30
    check-cast p1, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 32
    check-cast p2, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 34
    iget-object p1, p1, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 36
    iget-object p2, p2, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_2a
    const/4 p1, 0x0

    .line 44
    return p1
.end method

.method public final compareNullIfNeed(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1
    if-nez p1, :cond_a

    .line 3
    if-nez p2, :cond_a

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_a
    if-nez p1, :cond_12

    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_12
    if-nez p2, :cond_1a

    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public abstract doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I
.end method
