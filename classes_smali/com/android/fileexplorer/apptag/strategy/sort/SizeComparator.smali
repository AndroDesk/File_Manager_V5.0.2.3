.class Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;
.super Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.source "SizeComparator.java"


# instance fields
.field public strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;


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
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3b

    .line 7
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3b

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 15
    if-nez v0, :cond_17

    .line 17
    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 19
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 24
    :cond_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2c

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 32
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 47
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_3b
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4e

    .line 66
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    .line 69
    move-result-wide v0

    .line 70
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    .line 73
    move-result-wide p1

    .line 74
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 77
    move-result p1

    .line 78
    return p1

    .line 79
    :cond_4e
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    .line 82
    move-result-wide v0

    .line 83
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getSize()J

    .line 86
    move-result-wide p1

    .line 87
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 90
    move-result p1

    .line 91
    return p1
.end method
