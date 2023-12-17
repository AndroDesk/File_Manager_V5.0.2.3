.class Lcom/android/fileexplorer/apptag/strategy/sort/DateComparator;
.super Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.source "DateComparator.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_13
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
