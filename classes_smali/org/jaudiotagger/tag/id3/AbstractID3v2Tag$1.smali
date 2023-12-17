.class Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;
.super Ljava/lang/Object;
.source "AbstractID3v2Tag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/jaudiotagger/tag/TagField;",
        ">;"
    }
.end annotation


# instance fields
.field private fieldsIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation
.end field

.field public latestEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

.field public final synthetic val$it:Ljava/util/Iterator;

.field public final synthetic val$itHasNext:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    iput-object p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->val$it:Ljava/util/Iterator;

    .line 5
    iput-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->val$itHasNext:Ljava/util/Iterator;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->latestEntry:Ljava/util/Map$Entry;

    .line 13
    return-void
.end method

.method private changeIt()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->val$it:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    :goto_9
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->val$it:Ljava/util/Iterator;

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_53

    .line 18
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->val$it:Ljava/util/Iterator;

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->val$itHasNext:Ljava/util/Iterator;

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->latestEntry:Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    instance-of v1, v1, Ljava/util/List;

    .line 42
    if-eqz v1, :cond_3f

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/List;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_38

    .line 56
    goto :goto_9

    .line 57
    :cond_38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    .line 63
    goto :goto_53

    .line 64
    :cond_3f
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 75
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    .line 84
    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->val$itHasNext:Ljava/util/Iterator;

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_16

    .line 21
    const/4 v0, 0x0

    .line 22
    return v0

    .line 23
    :cond_16
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->val$itHasNext:Ljava/util/Iterator;

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->next()Lorg/jaudiotagger/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jaudiotagger/tag/TagField;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->changeIt()V

    .line 3
    :cond_7
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    if-eqz v0, :cond_14

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->changeIt()V

    .line 6
    :cond_14
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    if-eqz v0, :cond_1f

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    return-object v0

    .line 8
    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    return-void
.end method
