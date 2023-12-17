.class public Lcom/miui/maml/util/FilenameExtFilter;
.super Ljava/lang/Object;
.source "FilenameExtFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private mExts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/util/FilenameExtFilter;->mExts:Ljava/util/HashSet;

    .line 11
    if-eqz p1, :cond_13

    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_13
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 13
    invoke-static {v1, p1, p2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p1, :cond_1b

    .line 27
    return v0

    .line 28
    :cond_1b
    const/16 p1, 0x2e

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 33
    move-result p1

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq p1, v1, :cond_38

    .line 37
    add-int/2addr p1, v0

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/FilenameExtFilter;->contains(Ljava/lang/String;)Z

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/FilenameExtFilter;->mExts:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
