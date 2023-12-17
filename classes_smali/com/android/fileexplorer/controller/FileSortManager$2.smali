.class Lcom/android/fileexplorer/controller/FileSortManager$2;
.super Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;
.source "FileSortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/FileSortManager;->initComparators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/controller/FileSortManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/controller/FileSortManager;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/FileSortManager$2;->this$0:Lcom/android/fileexplorer/controller/FileSortManager;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;Lcom/android/fileexplorer/controller/FileSortManager$1;)V

    .line 7
    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I
    .registers 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;->compareNullIfNeed(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1d

    .line 20
    iget-object v0, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1d

    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :cond_1d
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_27

    .line 38
    const/4 p1, -0x1

    .line 39
    return p1

    .line 40
    :cond_27
    iget-object v0, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_31

    .line 48
    const/4 p1, 0x1

    .line 49
    return p1

    .line 50
    :cond_31
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 52
    if-eqz v0, :cond_48

    .line 54
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 56
    if-eqz v0, :cond_48

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager$2;->this$0:Lcom/android/fileexplorer/controller/FileSortManager;

    .line 60
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->access$100(Lcom/android/fileexplorer/controller/FileSortManager;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 63
    move-result-object v0

    .line 64
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 66
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_48
    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager$2;->this$0:Lcom/android/fileexplorer/controller/FileSortManager;

    .line 75
    iget-wide v1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 77
    iget-wide p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 79
    sub-long/2addr v1, p1

    .line 80
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/controller/FileSortManager;->access$200(Lcom/android/fileexplorer/controller/FileSortManager;J)I

    .line 83
    move-result p1

    .line 84
    return p1
.end method
