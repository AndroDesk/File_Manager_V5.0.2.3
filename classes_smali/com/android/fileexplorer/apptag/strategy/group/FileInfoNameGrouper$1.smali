.class Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper$1;
.super Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.source "FileInfoNameGrouper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->getPicCategoryComparator()Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper$1;->this$0:Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I
    .registers 4

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->isReverse()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_45

    .line 53
    invoke-static {}, Lcom/android/fileexplorer/model/group/CollatorInstance;->getInstance()Ljava/text/Collator;

    .line 56
    move-result-object v0

    .line 57
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p2, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_45
    invoke-static {}, Lcom/android/fileexplorer/model/group/CollatorInstance;->getInstance()Ljava/text/Collator;

    .line 73
    move-result-object v0

    .line 74
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->getNameWithoutSuffix()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move-result p1

    .line 86
    return p1
.end method
