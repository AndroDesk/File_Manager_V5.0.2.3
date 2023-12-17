.class Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper$1;
.super Ljava/lang/Object;
.source "FileItemDateGrouper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->sortByDate(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.field public final synthetic this$0:Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper$1;->this$0:Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/dao/file/FileItem;)I
    .registers 5

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    if-lez p1, :cond_1a

    const/4 p1, -0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper$1;->compare(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/dao/file/FileItem;)I

    move-result p1

    return p1
.end method
