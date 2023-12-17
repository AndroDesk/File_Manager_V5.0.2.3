.class Lcom/android/fileexplorer/apptag/strategy/sort/DateComparator;
.super Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.source "DateComparator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_13

    .line 7
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    .line 10
    move-result-wide v0

    .line 11
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    .line 14
    move-result-wide p1

    .line 15
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    .line 23
    move-result-wide v0

    .line 24
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getDate()J

    .line 27
    move-result-wide p1

    .line 28
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 31
    move-result p1

    .line 32
    return p1
.end method
