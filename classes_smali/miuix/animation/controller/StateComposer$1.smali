.class Lmiuix/animation/controller/StateComposer$1;
.super Ljava/lang/Object;
.source "StateComposer.java"

# interfaces
.implements Lmiuix/animation/utils/StyleComposer$IInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/StateComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiuix/animation/utils/StyleComposer$IInterceptor<",
        "Lmiuix/animation/controller/IFolmeStateStyle;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p3, [Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/StateComposer$1;->onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Lmiuix/animation/controller/IFolmeStateStyle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Lmiuix/animation/controller/IFolmeStateStyle;)Ljava/lang/Object;
    .registers 5

    array-length p1, p3

    if-lez p1, :cond_1c

    array-length p1, p2

    if-lez p1, :cond_1c

    const/4 p1, 0x0

    aget-object v0, p3, p1

    aget-object p1, p2, p1

    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 p2, 0x1

    :goto_10
    array-length v0, p3

    if-ge p2, v0, :cond_1b

    aget-object v0, p3, p2

    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->addState(Lmiuix/animation/controller/AnimState;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_1b
    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldIntercept(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getState"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method