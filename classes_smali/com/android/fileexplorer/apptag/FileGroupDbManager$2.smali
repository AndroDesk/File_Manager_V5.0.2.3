.class Lcom/android/fileexplorer/apptag/FileGroupDbManager$2;
.super Ljava/lang/Object;
.source "FileGroupDbManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/apptag/FileGroupDbManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/apptag/FileGroupDbManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$2;->this$0:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/fileexplorer/apptag/FileItemGroup;Lcom/android/fileexplorer/apptag/FileItemGroup;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TM;)I"
        }
    .end annotation

    .line 2
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object p1, p2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-lez p1, :cond_12

    const/4 p1, -0x1

    return p1

    :cond_12
    if-gez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$2;->compare(Lcom/android/fileexplorer/apptag/FileItemGroup;Lcom/android/fileexplorer/apptag/FileItemGroup;)I

    move-result p1

    return p1
.end method
