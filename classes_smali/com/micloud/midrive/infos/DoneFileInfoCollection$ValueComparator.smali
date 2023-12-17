.class Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;
.super Ljava/lang/Object;
.source "DoneFileInfoCollection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/DoneFileInfoCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/infos/DoneFileInfoCollection;


# direct methods
.method private constructor <init>(Lcom/micloud/midrive/infos/DoneFileInfoCollection;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;->this$0:Lcom/micloud/midrive/infos/DoneFileInfoCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/infos/DoneFileInfoCollection;Lcom/micloud/midrive/infos/DoneFileInfoCollection$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;-><init>(Lcom/micloud/midrive/infos/DoneFileInfoCollection;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/micloud/midrive/infos/DoneBaseInfo;Lcom/micloud/midrive/infos/DoneBaseInfo;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/infos/DoneBaseInfo;

    check-cast p2, Lcom/micloud/midrive/infos/DoneBaseInfo;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;->compare(Lcom/micloud/midrive/infos/DoneBaseInfo;Lcom/micloud/midrive/infos/DoneBaseInfo;)I

    move-result p1

    return p1
.end method
