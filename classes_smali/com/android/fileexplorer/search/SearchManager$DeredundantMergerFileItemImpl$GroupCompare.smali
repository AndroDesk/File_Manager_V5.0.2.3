.class Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;->this$1:Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;Lcom/android/fileexplorer/search/SearchManager$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;-><init>(Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/dao/file/FileItem;)I
    .registers 7

    .line 2
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_19
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v0, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_30

    const/4 p1, -0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl$GroupCompare;->compare(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/dao/file/FileItem;)I

    move-result p1

    return p1
.end method
