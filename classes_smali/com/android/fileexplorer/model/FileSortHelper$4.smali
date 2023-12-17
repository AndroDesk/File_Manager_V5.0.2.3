.class Lcom/android/fileexplorer/model/FileSortHelper$4;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/FileSortHelper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper$4;->this$0:Lcom/android/fileexplorer/model/FileSortHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;Lcom/android/fileexplorer/model/FileSortHelper$1;)V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;)I
    .registers 6

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    iget-object v0, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileSortHelper$4;->this$0:Lcom/android/fileexplorer/model/FileSortHelper;

    iget-wide v1, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-wide p1, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    sub-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/FileSortHelper;->access$200(Lcom/android/fileexplorer/model/FileSortHelper;J)I

    move-result p1

    return p1
.end method
