.class public Lmiuix/animation/controller/StateComposer;
.super Ljava/lang/Object;
.source "StateComposer.java"


# static fields
.field private static final METHOD_GET_STATE:Ljava/lang/String; = "getState"

.field private static final sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/utils/StyleComposer$IInterceptor<",
            "Lmiuix/animation/controller/IFolmeStateStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/animation/controller/StateComposer$1;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/controller/StateComposer$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/controller/StateComposer;->sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;
    .registers 5

    .line 1
    if-eqz p0, :cond_30

    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_30

    .line 7
    :cond_6
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_13

    .line 12
    new-instance v0, Lmiuix/animation/controller/FolmeState;

    .line 14
    aget-object p0, p0, v1

    .line 16
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeState;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 19
    return-object v0

    .line 20
    :cond_13
    array-length v0, p0

    .line 21
    new-array v0, v0, [Lmiuix/animation/controller/FolmeState;

    .line 23
    :goto_16
    array-length v2, p0

    .line 24
    if-ge v1, v2, :cond_25

    .line 26
    new-instance v2, Lmiuix/animation/controller/FolmeState;

    .line 28
    aget-object v3, p0, v1

    .line 30
    invoke-direct {v2, v3}, Lmiuix/animation/controller/FolmeState;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 33
    aput-object v2, v0, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_16

    .line 38
    :cond_25
    const-class p0, Lmiuix/animation/controller/IFolmeStateStyle;

    .line 40
    sget-object v1, Lmiuix/animation/controller/StateComposer;->sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    .line 42
    invoke-static {p0, v1, v0}, Lmiuix/animation/utils/StyleComposer;->compose(Ljava/lang/Class;Lmiuix/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lmiuix/animation/controller/IFolmeStateStyle;

    .line 48
    return-object p0

    .line 49
    :cond_30
    :goto_30
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method
