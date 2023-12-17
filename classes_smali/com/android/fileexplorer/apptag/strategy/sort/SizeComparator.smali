.class Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;
.super Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.source "SizeComparator.java"


# instance fields
.field public strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;


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

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    if-nez v0, :cond_17

    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    :cond_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3b
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_4e
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
