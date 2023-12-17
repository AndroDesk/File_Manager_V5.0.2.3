.class Lcom/android/fileexplorer/model/PrivateFileSortHelper$3;
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
    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$3;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;Lcom/android/fileexplorer/model/PrivateFileSortHelper$1;)V

    .line 7
    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/encryption/PrivateFile;Lcom/android/fileexplorer/encryption/PrivateFile;)I
    .registers 6

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
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$3;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

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
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$3;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    .line 34
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    .line 41
    move-result-wide p1

    .line 42
    sub-long/2addr v1, p1

    .line 43
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->access$200(Lcom/android/fileexplorer/model/PrivateFileSortHelper;J)I

    .line 46
    move-result p1

    .line 47
    return p1
.end method
