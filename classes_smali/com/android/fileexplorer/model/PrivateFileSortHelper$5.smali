.class Lcom/android/fileexplorer/model/PrivateFileSortHelper$5;
.super Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;
.source "PrivateFileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/PrivateFileSortHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$5;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;Lcom/android/fileexplorer/model/PrivateFileSortHelper$1;)V

    .line 7
    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/encryption/PrivateFile;Lcom/android/fileexplorer/encryption/PrivateFile;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1f

    .line 7
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1f

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$5;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->access$100(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1f
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_36

    .line 54
    return v0

    .line 55
    :cond_36
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 74
    move-result p1

    .line 75
    return p1
.end method
