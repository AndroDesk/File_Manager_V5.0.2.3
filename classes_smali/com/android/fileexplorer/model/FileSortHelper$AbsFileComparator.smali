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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/model/FileSortHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;->this$0:Lcom/android/fileexplorer/model/FileSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/model/FileSortHelper;Lcom/android/fileexplorer/model/FileSortHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    iget-boolean v1, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-ne v0, v1, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;->doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I

    move-result p1

    return p1

    :cond_13
    if-eqz v0, :cond_17

    const/4 p1, -0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x1

    :goto_18
    return p1

    :cond_19
    instance-of v0, p1, Lcom/android/fileexplorer/model/FavoriteItem;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/android/fileexplorer/model/FavoriteItem;

    check-cast p2, Lcom/android/fileexplorer/model/FavoriteItem;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public abstract doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I
.end method
