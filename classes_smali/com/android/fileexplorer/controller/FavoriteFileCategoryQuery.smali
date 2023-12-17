.class public Lcom/android/fileexplorer/controller/FavoriteFileCategoryQuery;
.super Ljava/lang/Object;
.source "FavoriteFileCategoryQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 6

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "query favorite is not support"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
