.class Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;
.super Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.source "TypeComparator.java"


# instance fields
.field public strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 6
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 11
    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I
    .registers 6

    .line 1
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

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
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

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
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

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
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_5e

    .line 53
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5e

    .line 59
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4f

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 67
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    :cond_4f
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 82
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move-result p1

    .line 94
    return p1

    .line 95
    :cond_5e
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_89

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_9d

    .line 123
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 125
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-result v0

    .line 137
    goto :goto_9d

    .line 138
    :cond_89
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_9d

    .line 144
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 146
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move-result v0

    .line 158
    :cond_9d
    :goto_9d
    return v0
.end method
