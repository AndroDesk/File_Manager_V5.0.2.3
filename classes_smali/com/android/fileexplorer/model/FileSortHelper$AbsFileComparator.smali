.class abstract Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;
.super Ljava/lang/Object;
.source "FileSortHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/FileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbsFileComparator"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/model/FileSortHelper;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/model/FileSortHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;->this$0:Lcom/android/fileexplorer/model/FileSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/model/FileSortHelper;Lcom/android/fileexplorer/model/FileSortHelper$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;->doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I

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
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

.method public abstract doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I
.end method
