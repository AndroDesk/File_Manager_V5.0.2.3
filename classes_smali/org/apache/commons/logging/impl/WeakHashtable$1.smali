.class Lorg/apache/commons/logging/impl/WeakHashtable$1;
.super Ljava/lang/Object;
.source "WeakHashtable.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/logging/impl/WeakHashtable;

.field private final synthetic val$enumer:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->this$0:Lorg/apache/commons/logging/impl/WeakHashtable;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    .line 8
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 9
    invoke-static {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->access$100(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
