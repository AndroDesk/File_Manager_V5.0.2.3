.class public Lcom/micloud/midrive/infos/SessionJobInfo$SortByTimeDescComparator;
.super Ljava/lang/Object;
.source "SessionJobInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/SessionJobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortByTimeDescComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/micloud/midrive/infos/SessionJobInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/micloud/midrive/infos/SessionJobInfo;Lcom/micloud/midrive/infos/SessionJobInfo;)I
    .registers 5

    .line 2
    iget-object p2, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {p2}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v0

    iget-object p1, p1, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/infos/SessionJobInfo;

    check-cast p2, Lcom/micloud/midrive/infos/SessionJobInfo;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/infos/SessionJobInfo$SortByTimeDescComparator;->compare(Lcom/micloud/midrive/infos/SessionJobInfo;Lcom/micloud/midrive/infos/SessionJobInfo;)I

    move-result p1

    return p1
.end method
