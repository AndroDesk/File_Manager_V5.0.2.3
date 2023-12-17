.class Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;
.super Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.source "TypeComparator.java"


# instance fields
.field public strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I
    .registers 6

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 p1, -0x1

    return p1

    :cond_22
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4f
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5e
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_9d

    :cond_89
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;->strComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_9d
    :goto_9d
    return v0
.end method
