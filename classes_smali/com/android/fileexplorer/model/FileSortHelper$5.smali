.class Lcom/android/fileexplorer/model/FileSortHelper$5;
.super Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/FileSortHelper;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/model/FileSortHelper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/model/FileSortHelper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper$5;->this$0:Lcom/android/fileexplorer/model/FileSortHelper;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;Lcom/android/fileexplorer/model/FileSortHelper$1;)V

    .line 7
    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_a
    iget-object v0, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 23
    if-eqz v0, :cond_2b

    .line 25
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 27
    if-eqz v0, :cond_2b

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileSortHelper$5;->this$0:Lcom/android/fileexplorer/model/FileSortHelper;

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/model/FileSortHelper;->access$100(Lcom/android/fileexplorer/model/FileSortHelper;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 34
    move-result-object v0

    .line 35
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 37
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_2b
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 46
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 52
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3e

    .line 62
    return v0

    .line 63
    :cond_3e
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 71
    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 78
    move-result p1

    .line 79
    return p1
.end method
