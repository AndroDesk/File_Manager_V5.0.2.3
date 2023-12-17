.class Lmiuix/animation/utils/StyleComposer$1;
.super Ljava/lang/Object;
.source "StyleComposer.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/utils/StyleComposer;->compose(Ljava/lang/Class;Lmiuix/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$interceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

.field public final synthetic val$interfaceClz:Ljava/lang/Class;

.field public final synthetic val$styles:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/animation/utils/StyleComposer$1;->val$interceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    .line 3
    iput-object p2, p0, Lmiuix/animation/utils/StyleComposer$1;->val$styles:[Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lmiuix/animation/utils/StyleComposer$1;->val$interfaceClz:Ljava/lang/Class;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/StyleComposer$1;->val$interceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-interface {v0, p2, p3}, Lmiuix/animation/utils/StyleComposer$IInterceptor;->shouldIntercept(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 11
    iget-object v0, p0, Lmiuix/animation/utils/StyleComposer$1;->val$interceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    .line 13
    iget-object v1, p0, Lmiuix/animation/utils/StyleComposer$1;->val$styles:[Ljava/lang/Object;

    .line 15
    invoke-interface {v0, p2, p3, v1}, Lmiuix/animation/utils/StyleComposer$IInterceptor;->onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    goto :goto_48

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/animation/utils/StyleComposer$1;->val$styles:[Ljava/lang/Object;

    .line 22
    array-length v1, v0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_18
    if-ge v2, v1, :cond_47

    .line 27
    aget-object v4, v0, v2

    .line 29
    :try_start_1c
    invoke-virtual {p2, v4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_21

    .line 33
    goto :goto_44

    .line 34
    :catch_21
    move-exception v5

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v7, "failed to invoke "

    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string v7, " for "

    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 63
    move-result-object v5

    .line 64
    const-string v6, "StyleComposer"

    .line 66
    invoke-static {v6, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_44
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto :goto_18

    .line 72
    :cond_47
    move-object p2, v3

    .line 73
    :goto_48
    if-eqz p2, :cond_5a

    .line 75
    iget-object p3, p0, Lmiuix/animation/utils/StyleComposer$1;->val$styles:[Ljava/lang/Object;

    .line 77
    array-length v0, p3

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 80
    aget-object p3, p3, v0

    .line 82
    if-ne p2, p3, :cond_5a

    .line 84
    iget-object p2, p0, Lmiuix/animation/utils/StyleComposer$1;->val$interfaceClz:Ljava/lang/Class;

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_5a
    return-object p2
.end method
