.class Lorg/jaudiotagger/audio/generic/AbstractTag$1;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;
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

.field public final synthetic this$0:Lorg/jaudiotagger/audio/generic/AbstractTag;

.field public final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/generic/AbstractTag;Ljava/util/Iterator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->this$0:Lorg/jaudiotagger/audio/generic/AbstractTag;

    .line 3
    iput-object p2, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private changeIt()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

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
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    .line 30
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->changeIt()V

    .line 8
    :cond_7
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1c

    .line 16
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 30
    :goto_1d
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->next()Lorg/jaudiotagger/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jaudiotagger/tag/TagField;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->changeIt()V

    .line 3
    :cond_b
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    return-void
.end method
