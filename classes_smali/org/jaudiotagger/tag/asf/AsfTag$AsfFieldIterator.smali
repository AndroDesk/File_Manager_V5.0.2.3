.class Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;
.super Ljava/lang/Object;
.source "AsfTag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/asf/AsfTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsfFieldIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/jaudiotagger/tag/asf/AsfTagField;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fieldIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;->fieldIterator:Ljava/util/Iterator;

    .line 6
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;->fieldIterator:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;->next()Lorg/jaudiotagger/tag/asf/AsfTagField;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jaudiotagger/tag/asf/AsfTagField;
    .registers 2

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;->fieldIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/asf/AsfTagField;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;->fieldIterator:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    return-void
.end method
