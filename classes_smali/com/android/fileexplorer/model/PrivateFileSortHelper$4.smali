.class Lcom/android/fileexplorer/model/PrivateFileSortHelper$4;
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
    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$4;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

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
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$4;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    .line 10
    move-result-wide p1

    .line 11
    sub-long/2addr v1, p1

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->access$200(Lcom/android/fileexplorer/model/PrivateFileSortHelper;J)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method
