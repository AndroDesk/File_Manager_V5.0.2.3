.class public abstract Lmiui/cloud/common/XCallback;
.super Ljava/lang/Object;
.source "XCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiui/cloud/common/XCallback;->mInterface:Ljava/lang/Class;

    .line 6
    return-void
.end method


# virtual methods
.method public final asInterface()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiui/cloud/common/XCallback;->mInterface:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Class;

    .line 10
    iget-object v2, p0, Lmiui/cloud/common/XCallback;->mInterface:Ljava/lang/Class;

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    new-instance v2, Lmiui/cloud/common/XCallback$1;

    .line 17
    invoke-direct {v2, p0}, Lmiui/cloud/common/XCallback$1;-><init>(Lmiui/cloud/common/XCallback;)V

    .line 20
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public abstract handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
