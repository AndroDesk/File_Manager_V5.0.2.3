.class Lcom/android/fileexplorer/controller/FileSortManager$1;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/FileSortManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/controller/FileSortManager$1;->this$0:Lcom/android/fileexplorer/controller/FileSortManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;Lcom/android/fileexplorer/controller/FileSortManager$1;)V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;->compareNullIfNeed(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_b
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x0

    return p1

    :cond_1d
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 p1, -0x1

    return p1

    :cond_27
    iget-object v0, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 p1, 0x1

    return p1

    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager$1;->this$0:Lcom/android/fileexplorer/controller/FileSortManager;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->access$100(Lcom/android/fileexplorer/controller/FileSortManager;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    move-result-object v0

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
