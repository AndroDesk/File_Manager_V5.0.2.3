.class Lcom/android/fileexplorer/model/PrivateFileSortHelper$2;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$2;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;Lcom/android/fileexplorer/model/PrivateFileSortHelper$1;)V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/encryption/PrivateFile;Lcom/android/fileexplorer/encryption/PrivateFile;)I
    .registers 6

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$2;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->access$100(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$2;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide p1

    sub-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->access$200(Lcom/android/fileexplorer/model/PrivateFileSortHelper;J)I

    move-result p1

    return p1
.end method
