.class Lcom/android/fileexplorer/apptag/strategy/sort/NameComparator;
.super Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.source "NameComparator.java"


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
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_16
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_22

    .line 33
    const/4 p1, -0x1

    .line 34
    return p1

    .line 35
    :cond_22
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2e

    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_2e
    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 49
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_46

    .line 58
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_46
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-result p1

    .line 83
    return p1
.end method
