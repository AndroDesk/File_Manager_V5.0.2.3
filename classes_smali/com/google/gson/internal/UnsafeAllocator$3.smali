.class Lcom/google/gson/internal/UnsafeAllocator$3;
.super Lcom/google/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/UnsafeAllocator;->create()Lcom/google/gson/internal/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$newInstance:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/UnsafeAllocator$3;->val$newInstance:Ljava/lang/reflect/Method;

    .line 3
    invoke-direct {p0}, Lcom/google/gson/internal/UnsafeAllocator;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/gson/internal/UnsafeAllocator;->assertInstantiable(Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/google/gson/internal/UnsafeAllocator$3;->val$newInstance:Ljava/lang/reflect/Method;

    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const/4 p1, 0x1

    .line 13
    const-class v2, Ljava/lang/Object;

    .line 15
    aput-object v2, v1, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
